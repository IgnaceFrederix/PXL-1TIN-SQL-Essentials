SELECT e.ename, e.sal, d.dname
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
WHERE e.deptno IN (SELECT e.deptno
		FROM emp e
		JOIN dept d
                ON e.deptno = d.deptno
                WHERE LOWER(d.dname) LIKE('%r%'))
/
