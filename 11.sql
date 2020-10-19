# 查询至少有一门课与学号为”01“的学生所学课程相同的学生的学号和姓名（重点）

SELECT a.sid,a.sname FROM student as a
INNER JOIN (
SELECT distinct sid FROM score 
WHERE cid in( 
SELECT cid FROM score
WHERE sid='01'
) AND sid!='01'
) as b on a.sid=b.sid