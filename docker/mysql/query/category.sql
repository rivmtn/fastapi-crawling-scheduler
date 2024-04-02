# 대분류 카테고리 생성
insert into categories (four_levels, taxonomy)
values ('sales_unit', '분류미지정');
insert into categories (four_levels, taxonomy)
values ('sales_unit', '기본주문');
insert into categories (four_levels, taxonomy)
values ('sales_unit', '대량주문');
insert into categories (four_levels, taxonomy)
values ('sales_unit', '박스주문');

# 1. 분류미지정 - 중분류 카테고리 생성
insert into categories (four_levels, taxonomy, super_seq)
values ('category', '분류미지정', 1);

# 2. 기본주문 - 중분류 카테고리 생성
insert into categories (four_levels, taxonomy, super_seq)
values ('category', '분류미지정', 2);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', 'OPP봉투', 2);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', '택배봉투', 2);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', 'PP/PE봉투', 2);

# 3. 대량주문 - 중분류 카테고리 생성
insert into categories (four_levels, taxonomy, super_seq)
values ('category', '분류미지정', 3);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', 'OPP봉투', 3);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', '택배봉투', 3);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', 'PP/PE봉투', 3);

# 3. 박스주문 - 중분류 카테고리 생성
insert into categories (four_levels, taxonomy, super_seq)
values ('category', '분류미지정', 4);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', 'OPP봉투', 4);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', '택배봉투', 4);
insert into categories (four_levels, taxonomy, super_seq)
values ('category', 'PP/PE봉투', 4);

# 1-1. 분류미지정 - 소분류 카테고리 생성
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 5);

# 2-1. 기본주문 - 소분류 카테고리 생성
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 6);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 7);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP접착봉투', 7);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP비접착봉투', 7);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP헤더봉투', 7);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 8);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '이중지택배봉투', 8);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'HDPE택배봉투(특가)', 8);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'HDPE택배봉투', 8);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'LDPE택배봉투', 8);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 9);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PP속폴리백(접착)', 9);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE속폴리백(접착)', 9);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE지퍼백', 9);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE손잡이지퍼백', 9);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE손잡이지퍼백(스탠드)', 9);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '행거봉투', 9);

# 3-1. 대량주문 - 소분류 카테고리 생성
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 10);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 11);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP접착봉투', 11);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP비접착봉투', 11);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP헤더봉투', 11);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 12);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '이중지택배봉투', 12);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'HDPE택배봉투(특가)', 12);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'HDPE택배봉투', 12);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'LDPE택배봉투', 12);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 13);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PP속폴리백(접착)', 13);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE속폴리백(접착)', 13);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE지퍼백', 13);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE손잡이지퍼백', 13);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE손잡이지퍼백(스탠드)', 13);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '행거봉투', 13);

# 4-1. 박스주문 - 소분류 카테고리 생성
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 14);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 15);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP접착봉투', 15);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP비접착봉투', 15);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'OPP헤더봉투', 15);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 16);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '이중지택배봉투', 16);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'HDPE택배봉투(특가)', 16);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'HDPE택배봉투', 16);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'LDPE택배봉투', 16);

insert into categories (four_levels, taxonomy, super_seq)
values ('section', '분류미지정', 17);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PP속폴리백(접착)', 17);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE속폴리백(접착)', 17);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE지퍼백', 17);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE손잡이지퍼백', 17);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', 'PE손잡이지퍼백(스탠드)', 17);
insert into categories (four_levels, taxonomy, super_seq)
values ('section', '행거봉투', 17);

# for i in range(18, 70):
#    print(f"insert into categories (four_levels, taxonomy, super_seq) values ('division', '분류미지정', {i});")
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 18);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 19);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 20);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 21);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 22);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 23);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 24);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 25);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 26);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 27);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 28);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 29);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 30);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 31);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 32);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 33);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 34);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 35);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 36);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 37);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 38);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 39);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 40);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 41);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 42);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 43);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 44);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 45);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 46);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 47);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 48);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 49);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 50);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 51);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 52);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 53);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 54);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 55);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 56);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 57);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 58);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 59);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 60);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 61);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 62);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 63);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 64);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 65);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 66);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 67);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 68);
insert into categories (four_levels, taxonomy, super_seq)
values ('division', '분류미지정', 69);