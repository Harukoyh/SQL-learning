# 查询学生的总成绩并进行排名

SELECT *,SUM(score) FROM score
GROUP BY sid
ORDER BY SUM(score) DESC
