# 查询选修了全部课程的学生信息

SELECT sid,count(distinct cid) as cnt FROM score
GROUP BY sid HAVING cnt=(SELECT count(cid) from course)