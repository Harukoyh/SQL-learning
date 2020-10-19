# 查询没学过“张三”老师讲授的任一门课程的学生姓名

SELECT * FROM student WHERE sid not in (
SELECT s.sid FROM score as s
INNER JOIN course as c on s.cid=c.cid
INNER JOIN teacher as t on c.tid=t.tid
WHERE t.tname='张三'
)