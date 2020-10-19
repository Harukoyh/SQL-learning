# 查询不及格的课程并按课程号从大到小排列

SELECT s.sid,st.sname,c.cid,c.cname,s.score
FROM score as s
INNER JOIN course as c on s.cid=c.cid
INNER JOIN student as st on s.sid=st.sid
WHERE s.score<60
ORDER BY c.cid DESC
