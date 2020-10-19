# 查询所有课程成绩小于60分的学生的学号和姓名
#所有成绩小于60分和平均成绩小于60分是不同的概念

#第一个子查询得出同学课程成绩小于60分的课程数
#第二个子查询统计同学总共学了几门课
#两者数目相等意味着所有课程分数小于60分
SELECT a.sid,t.sname
FROM
(
SELECT sid,count(cid) AS cnt
FROM score
WHERE score<60
GROUP BY sid
) as a
INNER JOIN
(
SELECT sid,count(cid) as cnt 
FROM score
GROUP BY sid
) as b on a.sid=b.sid
INNER JOIN student as t on a.sid=t.sid
WHERE a.cnt=b.cnt


