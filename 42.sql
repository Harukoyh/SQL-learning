# 统计每门课程的学生选修人数（超过5人的课程才统计）

# 要求输出课程号和选修人数，查询结果按人数降序排列，若人数相同，按课程号升序排列

SELECT cid,count(DISTINCT sid) FROM score
GROUP BY cid HAVING count(distinct sid)>5