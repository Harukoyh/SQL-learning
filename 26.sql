# 查询每门课程被选修的学生数
SELECT c.cid,count(distinct sc.sid),c.cname
FROM score as sc
INNER JOIN course as c on sc.cid=c.cid
GROUP BY c.cid,c.cname