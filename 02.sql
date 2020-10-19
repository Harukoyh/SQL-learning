# 查询平均成绩大于60分的学生的学号和平均成绩

SELECT sid,avg(score)
FROM score
GROUP BY sid HAVING avg(score)>60

# group by最好是select中的使用字段
