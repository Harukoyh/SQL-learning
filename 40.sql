# 查询选修”张三“老师所授课程的学生中成绩最高的学生姓名及其成绩

SELECT st.sname,max(s.score)
FROM score as s
INNER JOIN course as c on s.cid=c.cid
INNER JOIN teacher as t on c.tid=t.tid
INNER JOIN student as st on st.sid=s.sid
WHERE t.tname='张三' 

select s.sid,st.sname,s.score,c.cid,c.cname,t.tname
FROM score as s
INNER JOIN course as c on s.cid=c.cid
INNER JOIN teacher as t on c.tid=t.tid
INNER JOIN student as st on s.sid=st.sid
WHERE t.tname='张三' 
ORDER BY s.score DESC LIMIT 0,1
