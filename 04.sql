# 查询姓“李”的老师个数,distinct 来达到去重的目的

SELECT count(tid)
FROM teacher
WHERE tname LIKE '李%'

SELECT count(DISTINCT tname)
FROM teacher
WHERE tname LIKE '李%'