SELECT e.ename, em.empno, e.deptno, em.deptno
FROM emp e
JOIN emp em
ON e.mgr = em.empno
WHERE e.deptno = em.deptno
/
