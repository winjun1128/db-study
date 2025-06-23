--select
--    name,
--    deptno1
--    from student
--    where name='Anthony Hopkins' AND (select
--                                            dname
--                                            from department
--                                            where deptno1 = deptno);
1.
student , department
이름이 'Anthony Hopkins' 인 학생과 1전공이 동일한 학생들의 정보 (이름, 학과번호, 학과이름) 출력하기.

select 
name,
deptno1,
(select dname from department where deptno=deptno1)DNAME
from student
where deptno1 = (select deptno1
                 from student
                 where name = 'Anthony Hopkins')
;                
                 
select s.name,s.deptno1,d.dname
from student s, department d
where s.deptno1 = (select deptno1
                    from student
                    where name='Anthony Hopkins')
        AND s.deptno1 = d.deptno;

2.
professor, department 테이블 활용. 이름이 'Meg Ryan' 인 교수보다 나중에 입사한 사람의 이름, 입사일, 학과명 을 출력하세요.

select 
    p.name,
    p.hiredate,
    (select dname from department where d.deptno = p.deptno)DNAME
from professor P
where p.hiredate > (select hiredate
                    from professor
                    where name = 'Meg Ryan');
                    
select 
    p.name,
    p.hiredate,
    d.dname
from professor P,department d
where p.hiredate > (select hiredate
                    from professor
                    where name = 'Meg Ryan')
AND p.deptno = d.deptno;

--3
select name, weight
from student
where weight >(select AVG(weight)
                from student
               where deptno1 = 201);
--4
select empno,name,deptno
from emp2
where deptno IN (select dcode
                    from dept2
                    where SUBSTR(area,1,INSTR(area,' ')-1)='Pohang');
--1
select name,position,pay
from emp2
where pay > (select MIN(pay)
             from emp2
             where position = 'Section head');
--2
select name,grade,weight
from student
where weight < (select MIN(weight)
                from student
                where grade = 2);
--3 X
select d.dname,e.name,e.pay
from emp2 e,dept2 d
where e.pay < (select MIN(AVG(pay))
            from emp2
            group by deptno);
             

