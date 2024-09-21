Use hr ;

-- Page: 02

-- 1) Display the maximum, minimum and average salary and commission earned.

SELECT MAX(Salary) AS MAX_Salary FROM employee ;

SELECT MIN(Salary) AS MIN_SALARY FROM employee ;

SELECT AVG(Salary) AS AVERAGE_SALARY FROM employee ;

SELECT MAX(Commission) AS Max_Commission FROM employee ;

SELECT MIN(Commission) AS Min_Commission FROM employee ;

SELECT AVG(Commission) AS Average_Commission FROM employee ;

/* 2) Display the department number, total salary payout and 
total commission payout for each department. */

SELECT Department_Id, SUM(Salary), SUM(Commission) FROM Employee GROUP BY Department_Id ;

-- 3) Display the department number and number of employees in each department.  

SELECT Department_Id, COUNT(Employee_Id) AS NUM_OF_EMPLOYEES FROM Employee GROUP BY Department_Id ;

-- 4) Display the department number and total salary of employees in each department. 

SELECT Department_Id, SUM(SALARY) AS TOTAL_SALARY FROM employee GROUP BY Department_Id ;

-- 5) Display the employee's name who doesn't earn a commission. Order the result set without using the column name.
 
SELECT Employee_Name FROM employee WHERE Commission IS NULL ORDER BY 1; 

/* 6) Display the employees name, department id and commission. If an Employee doesn't earn the commission, 
then display as  'No commission'. Name the columns appropriately */

SELECT Employee_Name,Department_Id,Commission,
CASE
WHEN commission IS NULL  THEN 'No commission'
ELSE 'show the commission'
END AS appropriately 
FROM employee ;

/* 7) Display the employee's name, salary and commission multiplied by 2. If an Employee doesn't earn the commission, 
then display as 'No commission. Name the columns appropriately */

SELECT Employee_Name,Salary,
CASE
WHEN Commission IS NOT NULL THEN Commission * 2
ELSE 'NO Commission'
END AS appropriately 
FROM employee ;

-- 8) Display the sum of salaries of the employees working under each Manager. 

SELECT Manager_Name, SUM(SALARY) AS TOTAL_SALARY FROM employee WHERE Manager_Name IS NOT NULL GROUP BY Manager_Name ; 

-- 9) Select the Managers name, the count of employees working under and the department ID of the manager.

SELECT Manager_Name,COUNT(Employee_Id) FROM employee WHERE Manager_Name IS NOT NULL GROUP BY Manager_Name ;

/* 10) Display the average of sum of the salaries and group the result with the department id. 
Order the result with the department id. */ 

-- Sum of Salaries Grouped by Department
SELECT Department_Id, 
       SUM(SALARY) AS TOTAL_SALARY
FROM employee
GROUP BY Department_Id
ORDER BY Department_Id;

-- Average Salary per Department
SELECT Department_Id, 
       AVG(SALARY) AS AVG_SALARY
FROM employee
GROUP BY Department_Id
ORDER BY Department_Id;

/* To compute the average of the sum of salaries grouped by 
department ID and order the result by department ID, you need to follow below SQL Query */

-- Subquery to calculate the sum of salaries per department
WITH DeptSalarySum AS (
    SELECT Department_Id,
           SUM(SALARY) AS Total_Salary
    FROM EMPLOYEE
    GROUP BY Department_Id
)

-- Outer query to calculate the average of the total salaries from the subquery
SELECT AVG(Total_Salary) AS Avg_Salary_Sum, 
       Department_Id
FROM DeptSalarySum
GROUP BY Department_Id
ORDER BY Department_Id;

-- 11) Select the maximum salary of each department along with the department id 

SELECT Department_Id, 
       MAX(SALARY) AS MAX_SALARY
FROM employee
GROUP BY Department_Id
ORDER BY Department_Id;

 /* 12) Display the commission, if not null display 10% of salary, 
 if null display a default value 1 */
 
SELECT 
    CASE 
        WHEN Commission IS NOT NULL THEN 0.10 * SALARY 
        ELSE 1 
    END AS Commission_Value
FROM employee ;