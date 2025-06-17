--1
select studno 번호,name 이름, id 아이디 from student where height between 160 and 175
union All
select profno,name,id from professor where deptno IN(101,102,103,201) AND bonus is null;
--2
select '이름:'||name 이름, '아이디:'||id 아이디, '주민번호:'||substr(jumin,1,6)||'-'||substr(jumin,8,7) 주민번호 from student;
/*******************************************/
--1.
--emp 테이블에서 20 번 부서에 소속된 직원들의 이름과 3-4 번째
--글자만 '-' 으로 변경해서 출력하세요 .
select studno 번호, name 이름, id 아이디
from student
where height BETWEEN 160 AND 175
union all
select profno, name,id
from professor
where deptno IN(101,102,103,201) AND bonus is null;
--2.
--Student 테이블에서 1전공(deptno1)이 101 번인 학생들의 이름과
--주민등록번호를 출력하되 주민등록번호의 뒤 7자리는 ‘-’ 과 '/' 로 표시되게
--출력하세요.

select
    '이름:'||name,
    '아이디:'||id 아이디,
    '주민번호:'|| SUBSTR(jumin,1,6)||'-'||SUBSTR(jumin,7,7) 주민번호
    --앞 6자리 - 뒤 7자리 
from student;