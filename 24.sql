# 查询学生平均成绩及其名次
SELECT sid,avg(score),row_number() over (order by avg(score) desc)
FROM score
GROUP BY sid
