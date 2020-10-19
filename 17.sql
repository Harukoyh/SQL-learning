# 按平均成绩从高到底显示所有学生的所有课程的成绩以及平均成绩（重点）

SELECT sid "学号"
,MAX(case when cid='01' THEN score ELSE NULL END) "语文"
,MAX(case when cid='02' THEN score ELSE NULL END) "数学"
,MAX(case when cid='03' THEN score ELSE NULL END) "英语"
,avg(score) "平均成绩"
FROM score
GROUP BY sid
ORDER BY avg(score) DESC

