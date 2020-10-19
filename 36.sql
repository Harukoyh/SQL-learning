# 查询课程成绩在70分以上课程名称，分数和学生姓名

SELECT s.sid,t.sname,c.cname,s.score 
FROM score as s
INNER JOIN course as c on s.cid=c.cid
INNER JOIN student as t on s.sid=t.sid
WHERE s.score>70
