# HR Analysis: SQL Queries for Employee and Department Data

This repository includes SQL queries executed on the HR database, covering the `EMP` and `DEPT` tables. The queries are organized into three pages, each with a specific focus:

## Page 1: Basic Data Retrieval and Manipulation
1. **Display All Data**: Retrieve all information from the `EMP` and `DEPT` tables.
2. **Hire Date and Employee Name**: Select only the hire date and employee name for all employees.
3. **Employee and Title**: Concatenate the employee name (`ename`) and job ID, separated by a comma, to form a new column.
4. **Clerks' Info**: Display hire date, employee name, and department number for all employees with the title of 'Clerk'.
5. **Formatted Output**: Create a custom output where each column is separated by a comma, labeled as "THE OUTPUT".
6. **Employees with Salary > 2000**: List the names and salaries of employees earning more than 2000.
7. **Custom Column Headers**: Show names and hire dates with custom column headers "Name" and "Start Date".
8. **Order by Hire Date**: Display the names and hire dates of employees, ordered by their hire date.
9. **Reverse Salary Order**: List employees' names and salaries in descending salary order.
10. **Employees Earning Commission**: Show employee names, department numbers, and salaries (in reverse order) for those earning commission.
11. **No Manager**: Display the last name and job title for employees who do not have a manager.
12. **Sales Reps and Stock Clerks**: List employees who are either Sales Representatives or Stock Clerks with salaries not equal to $2500, $3500, or $5000.

Types of Queries:
Data Retrieval: Basic SELECT queries to extract specific information.
Data Manipulation: Use of concatenation and column renaming for formatted output.
Conditional Filtering: WHERE clauses for specific conditions like salary limits, job roles, and commission earners.
Sorting: ORDER BY clauses for ascending or descending display based on salary or hire date.
Logical Operators: AND/OR operators for multiple conditions in the queries.

## Page 2: Advanced Data Analysis
1. **Salary and Commission Statistics**: Display the maximum, minimum, and average salary and commission earned.
2. **Departmental Payouts**: Show department numbers with total salary and commission payouts.
3. **Employee Count per Department**: Display department numbers with the number of employees in each department.
4. **Total Salary per Department**: List department numbers with the total salary of employees in each department.
5. **Employees Without Commission**: Display names of employees who do not earn a commission, sorted without using the column name.
6. **Employee Details with Commission**: Show employee names, department IDs, and commission, displaying 'No commission' if none is earned.
7. **Salary and Commission Multiplied**: Display employee names, salaries, and doubled commission, showing 'No commission' if none is earned.
8. **Employees with Common First Names**: Show employee names and department IDs where the first name is the same as another employee in the same department.
9. **Salary Sum by Manager**: Display the sum of salaries for employees working under each manager.
10. **Managers and Employee Counts**: Select manager names, count of employees, and department IDs.
11. **Employees with Specific Last Name Pattern**: Show employee names, department IDs, and salaries for employees whose last names have 'a' as the second letter, grouped by manager.
12. **Average Salaries by Department**: Display the average of salaries, grouped by department ID, ordered by department ID.
13. **Maximum Salary per Department**: Show the maximum salary in each department along with department IDs.
14. **Commission Calculation**: Display commission values, with 10% of salary if not null, or a default value of 1 if null.
    
Types of Queries:
Aggregate Functions: MAX, MIN, AVG, SUM for calculating salary and commission statistics.
Group By: GROUP BY clauses for aggregating data by department or manager.
Conditional Logic: CASE statements for handling null values and specific conditions.
Sorting and Ordering: ORDER BY clauses for sorting results based on specific criteria.
Joins and Subqueries: Using joins and subqueries to handle more complex data retrieval scenarios.

## Files
- **HR_Database_Queries_Page1.sql**: Contains SQL queries for basic data retrieval and manipulation.
- **HR_Database_Queries_Page2.sql**: Contains SQL queries for advanced data analysis.

## Usage
To execute these queries, connect to the HR database using your preferred SQL and run the queries provided in the SQL files. Each query is designed to showcase specific SQL skills and operations.

## Contributions
Feel free to contribute by submitting pull requests or issues if you have suggestions or improvements.
