Use Hr ;
 
-- Page :03

/* 1. Write a query that displays the employee's last names only from the string's 2-5th position 
with the first letter capitalized and all other letters lowercase, Give each column an appropriate label.*/

SELECT CONCAT(
    UPPER(SUBSTRING(LAST_NAME FROM 2 FOR 1)), 
    LOWER(SUBSTRING(LAST_NAME FROM 3 FOR 3))
) AS Formatted_Last_Name
FROM employees;

/* 2. Write a query that displays the employee's first name and last name along with a " in between for 
e.g.: first name : Ram; last name : Kumar then Ram-Kumar. */

SELECT CONCAT(FIRST_NAME, '-', LAST_NAME) As Full_Name FROM employees;

/* 3. Write a query to display the employee's last name and if half of the salary is greater than ten thousand then increase the salary by 10% else by 11.5% 
along with the bonus amount of 1500 each. Provide each column an appropriate label. */

SELECT LAST_NAME, SALARY, 
CASE 
        WHEN SALARY / 2 > 10000 THEN SALARY * 0.1
        ELSE SALARY * 11.5
    END AS 'Updated Salary',
    1500 AS 'Bonus Amount'
FROM employees;
    
/* 4. Display the employee ID by Appending two zeros after 2nd digit and 'E' in the end, department id, salary and the manager name all in Upper case, 
if the Manager name consists of 'z' replace it with '$! */

SELECT 
    CONCAT(SUBSTRING(EMPLOYEE_ID, 1, 2), '00', SUBSTRING(EMPLOYEE_ID, 3), 'E') AS modified_employee_id,
    UPPER(DEPARTMENT_ID) AS department_id,
    UPPER(SALARY) AS salary,
    UPPER(REPLACE(Manager_Name, 'z', '$')) AS manager_name
FROM employees;

/* 5. Write a query that displays the employee's last names with the first letter capitalized and all other letters lowercase, and the length of the names, 
for all employees whose name starts with J, A, or M. Give each column an appropriate label. Sort the results by the employees' last names */

SELECT 
    CONCAT(UPPER(SUBSTRING(LAST_NAME, 1, 1)), LOWER(SUBSTRING(LAST_NAME, 2))) AS capitalized_last_name,
    LENGTH(LAST_NAME) AS name_length
FROM 
    employees
WHERE 
    LAST_NAME LIKE 'J%' 
    OR LAST_NAME LIKE 'A%' 
    OR LAST_NAME LIKE 'M%'
ORDER BY 
    LAST_NAME;
    
/* 6. Create a query to display the last name and salary for all employees. Format the salary to be 15 characters long, left-padded with $. Label the column SALARY */

SELECT 
    LAST_NAME,
    LPAD(salary, 15, '$') AS SALARY
FROM 
    employees;
    
-- 7. Display the employee's name if it is a palindrome.

SELECT Employee_Name FROM employee
WHERE Employee_Name = REVERSE(Employee_Name);

-- 8. Display First names of all employees with initcaps.

SELECT CONCAT(UPPER(SUBSTRING(first_name, 1, 1)), LOWER(SUBSTRING(first_name, 2))) AS initcaps_first_name FROM employees;

/* 9. From LOCATIONS table, extract the word between first and second space from the STREET ADDRESS column. */

SELECT Employee_Location, SUBSTRING_INDEX(SUBSTRING_INDEX(Employee_Location, ' ', 3), ' ', -1) AS middle_word
FROM employee;

/* 10. Extract first letter from First Name column and append it with the Last Name. Also add "@systechusa.com" at the end. Name the column as e-mail address. 
All characters should be in lower case. Display this along with their First Name. */

SELECT first_name, LOWER(CONCAT(SUBSTRING(first_name, 1, 1), last_name, '@systechusa.com')) AS email_address
FROM employees; 

/* 11. Display the names and job titles of all employees with the same job as Trenna. */

SELECT FIRST_NAME, last_name, JOB_ID
FROM employees 
WHERE JOB_ID = (SELECT 'PU_CLERK' FROM employees 
WHERE FIRST_NAME = 'Alexander' LIMIT 1);

-- 12. Display the names and department name of all employees working in the same city as Trenna. 

SELECT Employee_Name, DEPARTMENT_ID
FROM employee
WHERE Employee_Location = (SELECT 'India' FROM employee
WHERE Employee_Name = ' Varun Chawla  ' LIMIT 1);

-- 13. Display the name of the employee whose salary is the lowest.

SELECT first_name, last_name FROM employees
ORDER BY salary ASC
LIMIT 1;

-- 14. Display the names of all employees except the lowest paid.

SELECT first_name,last_name FROM employees
WHERE salary > (SELECT MIN(salary) FROM employees);