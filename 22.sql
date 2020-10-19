# 查询所有课程的成绩第2名到第3名的学生信息及该课程成绩

SELECT *
FROM (SELECT st.sid,st.sname,st.sage,st.ssex,cid,score,row_number() over(partition by cid ORDER BY score DESC) m
FROM score sc INNER JOIN student st on sc.sid=st.sid) a
WHERE m in (2,3)