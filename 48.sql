# 查询今年7月过生日的人

SELECT * FROM student
WHERE MONTH(sage)=MONTH('2020-7-20')

SELECT * FROM student
WHERE MONTH(sage)=MONTH(NOW())