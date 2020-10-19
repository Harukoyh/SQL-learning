#查询各科成绩最高分，最低分和平均分：以如下形式展示：课程ID、课程name、最高分、最低分、平均分、及格率、中等率、优良率、优秀率
# 及格为>=60,中等为70-80；优良为80-90；优秀为>=90

-- GROUP BY
-- CASE WHEN
-- count(>=60)/count(总数）

SELECT s.cid,c.cname
,c.cname
,max(s.score),min(s.score),avg(s.score)
,sum(case when s.score>=60 then 1 else 0 END)/count(sid) "及格率"
,sum(case when s.score>=70 and s.score<80 then 1 else 0 END)/count(sid) "中等率"
,sum(case when s.score>=80 and s.score<90 then 1 else 0 END)/count(sid) "优良率"
,sum(case when s.score>=90 then 1 else 0 END)/count(sid) "优秀率"
FROM score as s
INNER JOIN course as c on s.cid=c.cid
GROUP BY cid
