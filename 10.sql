# 查询没有学全所有课的学生的学号、姓名（重点）

SELECT st.*,sc.*
FROM student as st
LEFT JOIN score as sc on st.sid=sc.sid
GROUP BY st.sid having count(distinct sc.cid)<(select count(distinct cid) from course)


