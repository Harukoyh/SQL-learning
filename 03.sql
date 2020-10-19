#查询所有学生的学号、姓名、选课数、总成绩

SELECT a.sid,a.sname,count(b.cid),sum(case when b.score is NUll then 0 else b.score END)
FROM student AS a
LEFT JOIN score AS b ON a.sid=b.sid
GROUP BY sid,a.sname

# groupby 字段中出现的字段才允许出现在select中,selcet中出现的值最好是统计值
# 在求和中用到case when