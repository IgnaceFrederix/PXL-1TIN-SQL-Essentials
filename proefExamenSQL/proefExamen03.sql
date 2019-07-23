SELECT e.ename, e.sal, s.grade
FROM emp e
JOIN salgrade s
ON e.sal BETWEEN s.losal and s.hisal
WHERE LOWER(e.ename)  LIKE('__n%')
AND s.grade = &grade
/
