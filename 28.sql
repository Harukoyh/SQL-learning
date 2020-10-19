# 查询男生、女生人数
SELECT ssex,count(sid) from student
GROUP BY ssex

SELECT ssex,count(distinct sid) from student
GROUP BY ssex

SELECT
sum(case when ssex='男' then 1 else 0 END) "男生人数"
,sum(case when ssex='男' then 1 else 0 END) "女生人数"
FROM student
