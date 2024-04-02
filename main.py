import logging
import os
import sys
from datetime import datetime

import pymysql
from fastapi import FastAPI, Response, Request
from fastapi_sqlalchemy import DBSessionMiddleware
from pytz import timezone
from sqlalchemy import String, Column, Integer, TIMESTAMP
from starlette.background import BackgroundTask
from starlette.middleware.cors import CORSMiddleware
from starlette.types import Message

from database import init_db, Base
from env import DB_URL, HOSTNAME, USERNAME, PASSWORD, DATABASE

sys.path.append(os.path.dirname(os.path.abspath(os.path.dirname(__file__))))
baseurl = os.path.dirname(os.path.abspath(__file__))

app = FastAPI()
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
app.add_middleware(DBSessionMiddleware, db_url=DB_URL)


@app.on_event("startup")
async def on_startup():
    await init_db()


logger = logging.getLogger("main")
logging.basicConfig(level=logging.DEBUG, encoding='utf-8')
steam_handler = logging.FileHandler('info.log', mode='w', encoding='utf-8')
logger.addHandler(steam_handler)


async def set_body(request: Request, body: bytes):
    async def receive() -> Message:
        return {'type': 'http.request', 'body': body}

    request._receive = receive


@app.middleware('http')
async def some_middleware(request: Request, call_next):
    req_headers = request.headers
    req_body = await request.body()
    await set_body(request, req_body)
    response = await call_next(request)
    res_headers = response.headers
    res_status_code = response.status_code
    res_body = b''
    async for chunk in response.body_iterator:
        res_body += chunk
    task = BackgroundTask(func=log_info,
                          req_headers=req_headers,
                          req_body=req_body,
                          res_status_code=res_status_code,
                          res_headers=res_headers,
                          res_body=res_body)
    return Response(content=res_body, status_code=response.status_code,
                    headers=dict(response.headers), media_type=response.media_type, background=task)


def log_info(req_headers, req_body, res_status_code, res_headers, res_body):
    logging.info(f">>> REQUEST HEADERS: {req_headers}")
    logging.info(f">>> REQUEST BODY: {req_body.decode('utf-8')}")
    logging.info(f">>> RESPONSE STATUS CODE: {res_status_code}")
    logging.info(f">>> RESPONSE HEADERS: {res_headers}")
    logging.info(f">>> RESPONSE BODY: {res_body.decode('utf-8')}")


from urllib.request import urlopen
from bs4 import BeautifulSoup
from apscheduler.schedulers.background import BackgroundScheduler


class DeliveryStatus(Base):
    __tablename__ = "delivery_status"
    id = Column(Integer, autoincrement=True, primary_key=True, doc="id")
    text = Column(String(256), doc="text")
    created_at = Column(TIMESTAMP, nullable=False, default=datetime.now(timezone('Asia/Seoul')), doc="등록일시")

    class Config:
        arbitrary_types_allowed = True


def crawling_scheduler():
    url = ""  # 크롤링할 사이트 ex) 택배 배송조회 링크
    html = urlopen(url)
    bsObject = BeautifulSoup(html, "html.parser")

    # html 파일로 저장
    sys.stdout = open(
        f"./crawling_data/{datetime.now(timezone('Asia/Seoul')).strftime('%Y-%m-%d-%H-%M-%S')}-stdout.html", 'w')
    print(bsObject)
    sys.stdout.close()

    try:
        result = bsObject.find_all("table", {"class": "verticalTable"})[1].tbody.find_all("tr")[0].find_all("td")[
            0].text
    except:
        result = "내용 없음"

    # DB에 저장
    conn = pymysql.connect(host=HOSTNAME, user=USERNAME, password=PASSWORD, db=DATABASE)
    curs = conn.cursor()
    curs.execute(f"insert into delivery_status (text, created_at) values ('{result}', now());")
    curs.fetchall()
    conn.commit()
    curs.close()
    conn.close()

# 매 시간 0분에 크롤링 실행
schedule = BackgroundScheduler(daemon=True, timezone="Asia/Seoul")
schedule.add_job(crawling_scheduler, 'cron', minute='0')
schedule.start()
