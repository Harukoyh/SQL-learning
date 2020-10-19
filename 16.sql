# 检索“01”课程分数小于60，按分数降序排列的学生信息

SELECT t.*,s.cid,s.score FROM student AS t
INNER JOIN score AS s ON t.sid=s.sid
WHERE s.cid='01' and s.score<60
ORDER BY s.score DESC 