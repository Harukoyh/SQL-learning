#查询课程编号为02的总成绩（不重点）
SELECT sum(score),avg(score),count(score),count(distinct sid) from score
where cid='02'

# 查询各个课程的学生的总成绩和平均成绩
SELECT cid,sum(score),avg(score),count(score),count(distinct sid) from score
GROUP BY cid having cid='02'