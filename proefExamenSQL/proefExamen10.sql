SELECT e.ename, e.sal, d.dname
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
WHERE UPPER(d.dname) LIKE ('%R%')
/
