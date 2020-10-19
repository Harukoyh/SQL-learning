#查询出只有两门课程的全部学生的学号和姓名

SELECT st.sid,st.sname FROM student as st
WHERE sid in (
SELECT sid FROM score
GROUP BY sid HAVING count(DISTINCT cid)=2
)

SELECT sc.sid,st.sname FROM score as sc
INNER JOIN student as st on sc.sid=st.sid
GROUP BY sc.sid HAVING count(distinct sc.cid)=2