# 查询学过张三老师所教的所有课的同学的学号、姓名（重点）

SELECT st.sid,st.sname,s.cid,c.cname,c.tid,t.tname
FROM student as st
INNER JOIN score as s ON s.sid=st.sid
INNER JOIN course as c on s.cid=c.cid
INNER JOIN teacher as t ON t.tid=c.tid
WHERE t.tname='张三'
ORDER BY st.sid

