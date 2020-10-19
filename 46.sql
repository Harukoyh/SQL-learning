# 查询各学生的年龄

SELECT sid,sage,floor(DATEDIFF('2020-10-19',sage)/365) FROM student