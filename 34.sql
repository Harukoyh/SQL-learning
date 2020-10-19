# 查询课程名称为“数学”，且分数低于60的学生姓名和分数

SELECT s.sid,s.score,sname
FROM score as s
INNER JOIN course as c on s.cid=c.cid
INNER JOIN student as st ON s.sid=st.sid
WHERE c.cname='数学' and s.score <60

