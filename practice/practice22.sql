select e.empno,e.name,e.deptno,d.dname,d.area,e.pay
from emp2 e,dept2 d
where d.dcode IN (select e2.deptno
            from emp2 e2
            where e2.name = 'AL Pacino')
AND e.pay > (select AVG(e3.pay)
            from emp2 e3);
/*********************************/
--emp2 dept2 테이블을 참고하여,
--
--'AL Pacino'와 "같은 지역"에서
--근무하는 직원들의 평균 연봉보다
--많이 받는 직원들의 사번, 이름, 부서번호, 부서이름, 근무지역, 급여 를 출력하세요.
select empno,name,deptno,d.dname,d.area,e.pay
from emp2 e,dept2 d
WHERE e.deptno = d.dcode
AND pay > (select AVG(pay)
            from emp2
            where deptno in(select dcode
                            from dept2
                            where area =
                                (select area
                                from dept2
                                where dcode = 
                                    (select deptno
                                    from emp2
                                    where name = 'AL Pacino'))));
