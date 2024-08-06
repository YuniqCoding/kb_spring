 # 'scoula_db'라는 이름의 db 생성
create database scoula_db;
# id가 'yura'고 패스워드가 '1234'인 유저 생성
create user 'yura'@'%' identified by '1234';
# 'yura'에게 'scoula_db' 전체에 대한 모든 권한을 주겠다
grant all privileges on scoula_db.* to 'yura'@'%';