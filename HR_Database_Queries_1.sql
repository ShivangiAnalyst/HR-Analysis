CREATE DATABASE hr ;

USE hr ;

-- Importing CSV datafile into an SQL table using the Table Data Import Wizard.

-- Page: 01

-- 1. Display all information in the tables EMP and DEPT.

SELECT * FROM employee ;
SELECT * FROM department ;

-- 2. Display only the hire date and employee name for each employee.

SELECT Hire_Date, Employee_Name FROM employee ;

/* 3. Display the ename concatenated with the job ID, separated by a comma and space, and 
name the column Employee and Title */

SELECT Employee_Name,Job_Id, concat(Employee_Name,',',' ',Job_Id) AS Employee_Title
FROM employee ;
 

-- 4. Display the hire date, name and department number for all clerks.

SELECT Hire_Date,Employee_Name,Department_Id FROM employee
WHERE Job_Id= 'PU_CLERK';


/* 5. Create a query to display all the data from the EMP table. 
Separate each column by a comma. Name the column THE OUTPUT */

SELECT concat_ws('.',Employee_Id, Employee_Name, Employee_Location, Hire_Date, Job_Id, Salary, Commission, Manager_Id, Department_Id) 
As 'THE OUTPUT' FROM employee ;

-- 6. Display the names and salaries of all employees with a salary greater than 20000.

SELECT  Employee_Name,Salary FROM employee WHERE Salary > 20000 ;

/* 7. Display the names and dates of employees with the 
column headers "Name" and "Start Date." */

SELECT Employee_Name AS Name, Hire_Date AS StartDate FROM Employee ;

/* 8. Display the names and hire dates of all employees 
in the order they were hired. */

SELECT Employee_Name, Hire_Date FROM employee ORDER BY Hire_Date ;

/* 9. Display the names and salaries 
of all employees in reverse salary order. */

SELECT Employee_Name,Salary FROM employee ORDER BY salary DESC ;

/* 10. Display "ename" and "deptno" who are all earned commission 
and display salary in reverse order */

SELECT Employee_Name,Department_Id,Salary 
FROM employee 
WHERE Commission IS NOT NULL 
ORDER BY salary DESC ;

/* 11. Display the last name and job title of all employees 
who do not have a manager */

SELECT Employee_Name,Job_Id FROM employee WHERE Manager_Name IS NULL ;

/* 12. Display the last name, job, and salary for all employees whose job is 
sales representative or stock clerk and whose salary is not equal to $2,500, $3,500, or $5,000 */

SELECT Employee_Name,Job_Id,Salary FROM employee 
WHERE Job_Id IN ('SALES_REPRESENTATIVE' , 'STOCK_CLERK')
AND Salary NOT IN (2500, 3500, 5000) ;