CREATE TABLE temp_dept2
AS
SELECT * FROM dept2;
--1
INSERT  INTO temp_dept2(dcode,dname,pdept,area)
VALUES(9010,'temp_10',1006 ,'temp area');

1. temp_dept2 테이블에 아래와 같은 내용으로 새로운 부서정보를 입력하세요.
* 부서번호 : 9010
* 부서명 : temp_10
* 상위부서 : 1006
* 지역 : temp area

INSERT INTO temp_dept2
VALUES(9010,'temp_10',1006,'temp area');

--2
INSERT  INTO temp_dept2(dcode,dname,pdept)
VALUES(9020,'temp_20',1006);

2. temp_dept2 테이블에 아래와 같은 내용으로 특정컬럼에만 정보를 입력하세요
* 부서번호 : 9020
* 부서명 : temp_20
* 상위부서 : Business Department ( 1006 번 부서 )

INSERT INTO temp_dept2(dcode,dname,pdept)
VALUES(9020,'temp_20',1006);

INSERT INTO temp_dept2
VALUES(9020,'temp_20',1006,null);
--3
CREATE TABLE new_professor
AS
SELECT profno,name,pay,bonus
from professor
where profno <= 3000;

3. professor 테이블에서 profno 가 3000 번 이하의 교수들의 profno , name , pay, bonus 를 가져와서 새로운 new_professor 테이블을 생성하면서 데이터 한번에 넘겨지며 저장하는 쿼리를 쓰세요.

CREATE TABLE new_professor
AS
SELECT profno,name,pay,bonus
from professor
where profno <= 3000;

--4
UPDATE new_professor
set bonus = 100
where name = 'Winona Ryder';

4. new_professor 테이블에서 'Winona Ryder' 교수의 BONUS 를 100 만원으로 인상하세요.

UPDATE new_professor
set bonus = 100
--select *
--from new_professor
where name = 'Winona Ryder';

--select * from temp_dept2;
--select * from new_professor;
--select * from professor;
--
--drop table new_professor;