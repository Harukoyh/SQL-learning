# 求每门课程的学生人数

SELECT c.cid,c.cname,count(DISTINCT sid)
FROM score as s
INNER JOIN course as c on c.cid=s.cid
GROUP BY c.cid,c.cname

