# 按各科成绩进行排序，并显示排名
SELECT score,rank() over(PARTITION by sid ORDER BY score DESC) FROM score;