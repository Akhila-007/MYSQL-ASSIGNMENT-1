# MYSQL-ASSIGNMENT-1
DDL COMMANDS AND CONSTRAINTS
DDL Commands :
1. Table Creation (CREATE): Write the SQL statements to create a database named
“employee” and the following tables based on the provided schema:
⦿ Departments
⦿ Location
⦿ Employees

2. Table Alteration (ALTER): Consider the following scenarios and write the SQL
statements to alter the structure of the tables accordingly:
⦿ Add a new column named "email" to the Employees table to store
employee email addresses.
⦿ Modify the data type of the "designation" column in the Employees
table to support a wider range of values.
⦿ Drop the “age” column from the Employees table.
⦿ Rename the “hire_date” column to “date_of_joining”.

3. Table Renaming (RENAME): Rewrite the SQL statements to rename the
following tables:
⦿ Rename the "Departments" table to "Departments_Info".
⦿ Rename the "Location" table to "Locations".

4. Table Truncation (TRUNCATE): Write an SQL statement to truncate the
Employees table.
5. Database & Table Dropping (DROP): Write the SQL statements to drop the
Employees table and then the “employee” database.

Constraints :
1. Database Recreation:

⦿ Drop the 'employee' database if it exists and recreate it using the
provided schema, ensuring that all tables are created with the
appropriate constraints as instructed.

2. Departments Table:

⦿ Ensure that the "department_id" uniquely identifies each department.
⦿ Set up constraints on the "department_name" to avoid duplicate and null
entries.

3. Location Table:

⦿ Establish a mechanism to automatically generate unique identifiers for
each location, ensuring that they are incremented sequentially.
⦿ Implement constraints to prevent the insertion of null and duplicate
locations.
4. Employees Table:

⦿ Guarantee that each employee has a distinct identifier.
⦿ Create a restriction to ensure that the employee's name is always
provided.
⦿ Limit the acceptable values for the "gender" field to only 'M' or 'F'.
⦿ Enforce a condition to ensure that the employee's age is 18 or above.
⦿ Automatically assign the current date to the "hire_date" field if not
specified.
⦿ Establish links between the "department_id" and "location_id" fields in
the "employees" table and their respective tables.


# MYSQL-ASSIGNMENT-2
Instructions:
★ Continue from the previous assignment (database & table creation with constraints).
★ Use the provided DML insert codes to populate the tables from here: Employee Data
★ Execute the queries in this assignment after inserting the data.

1. Distinct Values:

⦿ a query to retrieve distinct salaries from the Employees table.

2. Alias (AS):

⦿ Provide aliases for the "age" and "salary" columns as "Employee_Age" and
"Employee_Salary", respectively.

3. Where Clause & Operators:

⦿ Retrieve employees with a salary greater than ₹50000 and hired before
2016-01-01.
⦿ Find the employee whose designation is missing and fill it with "Data
Scientist".
Sorting and Grouping Data:

1. ORDER BY:

⦿ Find employees sorted by department ID in ascending order and salary in
descending order.

2. LIMIT:

⦿ Display the first 5 employees hired in the year 2018.

3. Aggregate Functions:

⦿ Calculate the sum of all salaries in the Finance department.
⦿ Find the minimum age among all employees.

4. GROUP BY:

⦿ List the maximum salary for each location.
⦿ Calculate the average salary for each designation containing the word
'Analyst'.
5. HAVING:

⦿ Find departments with less than 3 employees.
⦿ Find locations with female employees whose average age is below 30.

Joins:
1. Inner Join:

⦿ List employee names, their designations, and department names where
employees are assigned to a department.

2. Left Join:

⦿ List all departments along with the total number of employees in each
department, including departments with no employees.

3. Right Join:

⦿ Display all locations along with the names of employees assigned to each
location. If no employees are assigned to a location, display NULL for
employee name.
