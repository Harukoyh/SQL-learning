# 查询不同老师所教不同课程平均分从高到低显示

-- 1.以课程为主体，求平均分
SELECT c.cid,c.cname,avg(sc.score) as avg_score
FROM score as sc
INNER JOIN course as c on sc.cid=c.cid
GROUP BY sc.cid,c.cname
ORDER BY avg_score DESC

-- 2.以老师为主体，求平均分
SELECT t.tid,t.tname,avg(sc.score) as avg_score
FROM score as sc
INNER JOIN course as c on sc.cid=c.cid
INNER JOIN teacher as t on c.tid=t.tid
GROUP BY t.tid
ORDER BY avg_score DESC