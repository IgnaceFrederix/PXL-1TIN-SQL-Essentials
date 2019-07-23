SELECT e.ename, e.sal, s.grade
FROM emp e
JOIN salgrade s
ON sal BETWEEN s.losal AND s.hisal
WHERE s.grade = 
		(SELECT grade
                 FROM emp
		 JOIN salgrade s
                 ON sal BETWEEN s.losal AND s.hisal
                 WHERE INITCAP(ename) = 'Blake')
AND INITCAP(e.ename) != 'Blake'
ORDER BY e.sal
/
