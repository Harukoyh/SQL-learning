#查询和“01”号同学所学课程完全相同的其他同学的学号（重点）
SELECT * FROM student
WHERE sid in (
SELECT sid FROM score
WHERE sid!='01'
GROUP BY sid Having COUNT(DISTINCT cid)=(SELECT count(distinct cid) from score where sid='01')
)
and sid not in (
SELECT distinct sid FROM score 
WHERE cid not in ( 
SELECT cid FROM score
WHERE sid='01'
))

-- 01号学了01，02，03
-- 1. 选出所学的课不在（01，02，03）的同学-排除
-- 2. 剩下的同学肯定选了01，02，03 中的某几门，判断所学的课程数是否等于3