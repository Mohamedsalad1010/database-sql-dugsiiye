#exercise_4

insert into score(name , email , score) values
('Ayaan Mohamed', 'ayaan@gmail.com' , 80),
('Khalid Said', 'khalid@yahoo.com' , 75),
('Nasteexo Abdi', 'nasteexo@gmail.com' , 70),
('Sagal Osman', 'sagal@live.com' , 85),
('Max Jones', 'max@dugsiiye.com' , 90),
('Layla Ahmed', 'layla123@gmail.com' , 60),
('Mohamed Ibrahim', 'moha@backend.com' , 55),
('Zahra Hassan', 'zahra@outlook.com' , 99);

select * from score

#requirments of exercise 4

#1. total students
select count(*) as 'Total students' from score

#2. highest and lowets score
select max(score) as 'top score' , min(score) as 'lowest score' from score

#3 students per domain
select SUBSTRING_INDEX(email , '@' , -1) as domain from score
group by domain order by domain

# average each grouped domain
select SUBSTRING_INDEX(email , '@' , -1) as domain , avg(score) from score
group by domain
