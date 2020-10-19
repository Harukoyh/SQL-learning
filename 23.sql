-- 使用分段[100-85),[85-70),[70-60),[<60] 来统计各科成绩，分别统计各分数段人数、课程ID和课程名称

SELECT c.cid,c.cname
,sum(case when sc.score<=100 and sc.score>85 then 1 else 0 END) as "[100,85)"
,COUNT(case when sc.score<=85 and sc.score>70 then 1 else NULL END) as "[85,70)"
,sum(case when sc.score<=70 and sc.score>60 then 1 else 0 END) as "[70,60)"
,sum(case when sc.score<=60  then 1 else 0 END) as "[<60]"
FROM score as sc
INNER JOIN course as c on sc.cid=c.cid
GROUP BY c.cid,c.cname