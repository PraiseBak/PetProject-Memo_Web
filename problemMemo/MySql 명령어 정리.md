# MySql 명령어 정리



### 데이터베이스 관련

- create database databaseName;

- USE databaseName;

- show tables;

- desc 테이블명;

- show columns from 테이블;

- show full columns from 테이블명 ;

- mysql -u test_user -p test_db < backup_test_db.sql

- mysql -u [사용자 계정] -p [패스워드] [복원할 DB] < [백업된 DB].sql

  




### 테이블 관련

- create table tablename (id int,name varchar(20));

- alter table tablename drop column;

- alter table tablename add type option;
  - alter table tablename add column varchar(100) not null default '0';
  
- alter table tablename change column columnNameToChange varchar(12);

- alter table tablename modify column varchar(14);

- alter table tablename rename tableNameToChange;

- drop table tablename;

  column_modify = """alter table board_content rename board_content_table"""

- **DELETE** **FROM** tableName **WHERE** _id=4

- UPDATE 테이블명 SET 컬럼1=컬럼1의 값, 컬럼2=컬럼2의 값 WHERE 대상이 될 컬럼명=컬럼의 값

