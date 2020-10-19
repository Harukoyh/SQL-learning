# 查询下个月过生日的同学

SELECT * FROM student
WHERE MONTH(sage)=month(date(now()))+1

SELECT * FROM student WHERE
CASE WHEN month(date(now()))=12 then month(sage)=1 ELSE  MONTH(sage)=month(date(now()))+1 end