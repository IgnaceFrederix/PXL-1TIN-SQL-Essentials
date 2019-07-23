SELECT job, AVG(sal)
FROM emp
WHERE INITCAP(ename) NOT IN ('King' ,'Blake')
GROUP BY job
HAVING AVG(sal) > 1000
/
