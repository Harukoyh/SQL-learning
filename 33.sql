# 查询某门课程的平均成绩，结果按平均成绩升序排序，平均成绩相同时，按课程号降序排列

SELECT s.cid,c.cname,avg(score) as avg_score from score as s
INNER JOIN course as c on s.cid=c.cid
GROUP BY s.cid
ORDER BY avg_score asc,s.cid desc

#一定要加上别名