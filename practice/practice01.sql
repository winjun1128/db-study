--연습1번
select name || '`s ' || 'ID : ' || ID || ', ' || 'WEIGHT is ' || weight AS "ID AND WEIGHT" from student;
--연습2번
select ename || '(' || job || ') , ' || ename || '`' || job || '`' AS "NAME AND JOB" from emp;
--연습3번
select ename || '`s sal is $' || sal AS "Name and Sal" from emp;

-----------------------
--1.
select
    name || '''s ID : ' || id || ', WEIGHT is ' || weight || 'Kg' As "ID AND WEIGHT"
from student;

--2.
select ename, ename, ename, ename from emp;
select ename, job from emp;

select ename || '(' || job || ') , ' || ename || '''' || job || '''' "NAME AND JOB"
from emp;

--3.
select * from emp;
select ename, sal from emp;

select ename || '''s sal is $' || sal AS "Name and Sal" from emp;