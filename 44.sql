# 检索至少选修两门课程的学生学号

SELECT sid,count(DISTINCT cid) as cnt FROM score
GROUP BY sid having cnt>=2

