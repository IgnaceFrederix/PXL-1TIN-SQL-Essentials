SELECT e.ename ,TO_CHAR(e.sal, 'fm$9,999') sal
FROM emp e
JOIN dept d
ON e.deptno= d.deptno
WHERE e.sal > ALL (SELECT sal
                   FROM emp
                   WHERE deptno IN (SELECT e.deptno
                                    FROM emp e
                                    JOIN dept d
                                    ON e.deptno = d.deptno
                                    WHERE LOWER(d.loc) = 'chicago'
                                    AND LOWER(e.ename) LIKE ('%s'))
                 )
/
