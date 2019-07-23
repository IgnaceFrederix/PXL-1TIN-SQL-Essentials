SELECT e.deptno, AVG(e.sal)
FROM emp e
WHERE e.sal > &minimumSal
GROUP BY e.deptno
/
