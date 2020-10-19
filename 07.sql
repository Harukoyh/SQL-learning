# 查询学过编号为”01“的课程并且也学过编号为”02“的课程的学生的学号、姓名（重点）

SELECT sid,sname FROM student
WHERE sid in
(
SELECT a.sid FROM 
(SELECT sid FROM score WHERE cid='01') as a
INNER JOIN
(SELECT sid FROM score WHERE cid='02') as b
on a.sid=b.sid
)