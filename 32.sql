# 查询平均成绩大于等于85的所有学生的学号、姓名、平均成绩

SELECT a.sid,a.sname,b.avg_score
FROM student as a 
INNER JOIN
(
SELECT sid,avg(score) as avg_score FROM score
GROUP BY sid HAVING avg_score >=85
) as b on a.sid=b.sid


