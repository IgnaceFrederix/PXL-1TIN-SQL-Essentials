CREATE VIEW vraag7
AS
SELECT e.ename werknemers, e2.ename baas
FROM emp e
JOIN emp e2
ON e.mgr = e2.empno
WHERE e.sal > e2.sal
WITH READ ONLY
/
