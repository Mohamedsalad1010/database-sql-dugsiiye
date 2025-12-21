# exercise 8

### requirements

#### 1. all students older 22
``
db.students.find({age: {$gt:22}})``

result 
![resulr](./result1.png)

#### 2. students enrolled react

code ``db.students.find({age: {$gt:22}})``
result
![result](./result2.png)

#### 3. all students their names "s'
result 
[]

#### 4. students their age 18 or 21
result
![result](./result4.png)

### 5. Find students who are NOT using Gmail

 result![result](./result5.png)

 ### 6. Find students enrolled in React and older than 20

 result ![result](./result6.png)

 ### 7. Find students enrolled in React or Node.js
 ![result](./result7.png)

 ### BONUS: Use $regex to match names containing "x" or emails ending in .edu

 ![result](./result8.png)