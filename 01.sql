# 查询课程编号为“01”的课程比“02”的课程成绩高的所有学生的学号（重点）

SELECT a.sid 'sno',c.sname,a.score '01',b.score '02' FROM
(
SELECT sid,cid,score FROM score WHERE cid='01'
) AS a
INNER JOIN
(
SELECT sid,cid,score FROM score WHERE cid='02'
) AS b ON a.sid=b.sid
INNER JOIN student as c on c.sid=a.sid
WHERE a.score>b.score

#通过选取01课程信息和02课程信息，将两张表拼成一张表。
#然后选择条件是01分数大于02分数
#再加一次内部链接，可以得到学生姓名