\l TableJoins/employee.q
\l TableJoins/salaries.q

// 1. Perform a left join to combine employees and salaries based on the id column. What is the resulting table?

result1: employee lj `id xkey select from salaries
show result1

// 2. Add a new column location to the employees table with values NY, LA, SF, TX, LA, NY respectively. Perform the left join with salaries. What does the resulting table look like?

employee:update location:`NY`LA`SF`TX from employee
show employee
result2:employee lj `id xkey select from salaries
show result2

// 3. Add a new column bonus to the salaries table with values 5000, 7000, 6500, 8000, 7500 respectively. Perform the left join. What is the resulting table?

salaries:update bonus:5000 7000 6500 8000 from salaries
show salaries
result3:employee lj `id xkey select from salaries
show result3

// 4. Modify the employees table to have an additional column emp_code with values E001, E002, E003, E004, E005, E006 respectively. Modify the salaries table to have the same column emp_code with values E001, E002, E003, E005, E007 respectively. Perform the left join based on both id and emp_code. What is the resulting table?

employee:update emp_code:`E001`E002`E003`E004 from employee
salaries:update emp_code:`E001`E002`E005`E007 from salaries
result4:employee lj `id xkey select from salaries
show result4

// 5. Rename the salary column in salaries table to compensation. Perform the left join with employees. What does the resulting table look like, and how is the column conflict resolved?

salaries:(`id`salary!`id`compensation) xcol salaries
show salaries

// 6. Create a large employees table with 1 million entries and a salaries table with 1 million entries. Perform a left join. What is the impact on performance, and how can you optimize it?

employee:(`id`name`department)!(1+til 1000000;1000000#`name;1000000#`department)
salaries:(`id`salary)!(1+til 1000000; 1000000#50000)
\t show employee
\t show salaries

\t result5:employee lj `id xkey select from salaries


