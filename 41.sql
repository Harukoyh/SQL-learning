# 查询不同课程成绩相同的学生的学生编号、课程编号、学生成绩（重点）

select DISTINCT b.sid,b.cid,b.score 
from score a,score b 
where a.cid != b.cid and a.score = b.score
