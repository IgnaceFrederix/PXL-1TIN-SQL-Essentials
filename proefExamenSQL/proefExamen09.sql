INSERT INTO emp
(empno, ename, hiredate, deptno)
VALUES (&empno, INITCAP('&ename'), TO_DATE('&hire_date', 'dd/mm/yyyy'), &deptno)
/
