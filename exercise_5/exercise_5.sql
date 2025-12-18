#exercise_5

#REQUIREMENTS 


#1 making renational b/w students courses enrollemnts
create table enrollements (
id int primary key auto_increment,
students_id int,
courses_id int,

foreign key (students_id) references school.students(id),
foreign key  (courses_id ) references school.courses(id)
)


# 2 insert courses students in enroolemenst
 insert into enrollements(students_id , courses_id) values
(5,  1) , (2 , 1)
 
 select * from enrollements
 
 # 3 usin inner join
 select students.name  , courses.title from enrollements 
 join students on enrollements.students_id = students.id
 join courses on enrollements.courses_id = courses.id
 
 #4 using left join
 select students.name , courses.title from students 
 left join enrollements on students.id = enrollements.students_id
 left join courses on enrollements.courses_id = courses.id
 
# how many students enrollements in per courses using GROUP BY 
 select courses.title , count(students.id)as 'total students' from enrollements  
 join courses on enrollements.courses_id = courses.id  
 join students on enrollements.students_id = students.id   group by  courses.title  order by courses.title desc
 
 
 select * from students
 
 select * from courses