# 查询课程编号为03且课程成绩在80分以上的学生的学号和姓名

SELECT sc.sid,st.sname,sc.cid,sc.score,c.cname
FROM score as sc
INNER JOIN student as st on sc.sid=st.sid
INNER JOIN course as c on sc.cid=c.cid
WHERE sc.cid='03' and sc.score>80
