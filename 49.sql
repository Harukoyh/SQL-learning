# 查询下周过生日的同学

SELECT * FROM student WHERE week(sage,1)=week(date(now()),1)+1

SELECT week('1990-01-20',1)

SELECT * FROM student WHERE week(concat('2020-',substring(sage,6,5)),1)=WEEK('2020-05-15',1)+1