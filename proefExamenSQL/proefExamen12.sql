UPDATE emp
SET sal = (SELECT MIN(sal)
           FROM emp
	   WHERE deptno=30
           GROUP BY deptno
           )
WHERE deptno = (SELECT deptno
                FROM emp
                WHERE INITCAP(ename) = 'Jones')
AND INITCAP(ename) != 'Jones'
/
