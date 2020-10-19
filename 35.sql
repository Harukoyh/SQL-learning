# 查询所有学生的课程及分数情况（重点）

select a.sid,a.sname,
	SUM(case c.cname when '语文' then b.score else 0 end) as '语文',
	SUM(case c.cname when '数学' then b.score else 0 end) as '数学',
	SUM(case c.cname when '英语' then b.score else 0 end) as '英语',
	SUM(b.score) as  '总分'
from student a left join score b on a.sid = b.sid 
left join course c on b.cid = c.cid 
GROUP BY a.sid,a.sname
