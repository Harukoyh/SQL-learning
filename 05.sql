# 查询没学过张三老师课程的学生的学号、姓名（重点）
SELECT sid,sname FROM student
WHERE sid not in(

SELECT sid FROM score
WHERE cid=(
SELECT cid FROM course
WHERE tid=(
SELECT tid FROM teacher WHERE tname='张三')
))


#解法二
SELECT sid,sname FROM student
WHERE sid not in
(
SELECT sid FROM score AS s
INNER JOIN course AS c on s.cid=c.cid
INNER JOIN teacher as t ON c.cid=t.tid
WHERE t.tname='张三'
)


