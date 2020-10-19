# 查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩（重点）

SELECT a.sid,a.sname,avg(score) FROM student AS a 
INNER JOIN score AS b
ON a.sid = b.sid
WHERE a.sid in (
SELECT sid FROM score
WHERE score< 60
GROUP BY sid HAVING COUNT(DISTINCT cid)>=2
)
group by sid,sname
 


