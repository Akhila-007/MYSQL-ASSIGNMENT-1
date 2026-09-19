-- 1. TABLE CREATION

CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE DEPARTMENTS
(DEPARTMENT_ID INT PRIMARY KEY AUTO_INCREMENT,
DEPARTMENT_NAME VARCHAR(100) NOT NULL UNIQUE);
ALTER TABLE DEPARTMENTS AUTO_INCREMENT=101;

CREATE TABLE LOCATION 
(LOCATION_ID INT PRIMARY KEY AUTO_INCREMENT,
LOCATION VARCHAR(30) NOT NULL UNIQUE);
ALTER TABLE LOCATION AUTO_INCREMENT=1001;

CREATE TABLE EMPLOYEES
(EMPLOYEE_ID INT PRIMARY KEY AUTO_INCREMENT,
EMPLOYEE_NAME VARCHAR(50) NOT NULL,
GENDER ENUM('M','F') NOT NULL,
AGE INT CHECK(age>=18),
HIRE_DATE DATE DEFAULT(CURRENT_DATE),
DEPARTMENT_ID INT,
LOCATION_ID INT,
FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID),
FOREIGN KEY (LOCATION_ID) REFERENCES LOCATION(LOCATION_ID));

DESC DEPARTMENTS;
DESC LOCATION;
DESC EMPLOYEES;


-- 2.TABLE ALTERATION

ALTER TABLE EMPLOYEES ADD EMAIL VARCHAR(100) NOT NULL UNIQUE;
ALTER TABLE EMPLOYEES ADD DESIGNATION VARCHAR(100);
ALTER TABLE EMPLOYEES MODIFY DESIGNATION VARCHAR(200);
ALTER TABLE EMPLOYEES DROP COLUMN AGE;
ALTER TABLE EMPLOYEES RENAME COLUMN HIRE_DATE TO DATE_OF_JOINING;
 
DESC EMPLOYEES;


-- 3.TABLE RENAMING

RENAME TABLE DEPARTMENTS TO DEPARTMENT_INFO;
RENAME TABLE LOCATION TO LOCATIONS;

SHOW TABLES; 


-- 4. TABLE TRUNCATION

TRUNCATE TABLE EMPLOYEES;
DESC EMPLOYEES;


-- 5. DATABASE AND TABLE DROPPING

DROP TABLE EMPLOYEES;
SHOW TABLES;

DROP DATABASE EMPLOYEE;


								-- QUERYING DATA
                                
CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE DEPARTMENT_INFO
(DEPARTMENT_ID INT PRIMARY KEY AUTO_INCREMENT,
DEPARTMENT_NAME VARCHAR(100) NOT NULL UNIQUE);

CREATE TABLE LOCATIONS
(LOCATION_ID INT PRIMARY KEY AUTO_INCREMENT,
LOCATION VARCHAR(30) NOT NULL UNIQUE);

CREATE TABLE EMPLOYEES
(EMPLOYEE_ID INT PRIMARY KEY AUTO_INCREMENT,
EMPLOYEE_NAME VARCHAR(50) NOT NULL,
GENDER ENUM('M','F') NOT NULL,
AGE INT CHECK(age>=18),
HIRE_DATE DATE DEFAULT(CURRENT_DATE),
DESIGNATION VARCHAR(50),
DEPARTMENT_ID INT,
LOCATION_ID INT,
SALARY INT,
FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT_INFO(DEPARTMENT_ID),
FOREIGN KEY (LOCATION_ID) REFERENCES LOCATIONS(LOCATION_ID));

 SHOW TABLES;
 
 INSERT INTO department_info (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO locations (location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);


SELECT * FROM DEPARTMENT_INFO;
SELECT * FROM LOCATIONS;
SELECT * FROM EMPLOYEES;

-- 1. a query to retrieve distinct salaries from the Employees table.
SELECT DISTINCT SALARY FROM EMPLOYEES;

-- 2.Provide aliases for the "age" and "salary" columns as "Employee_Age" and "Employee_Salary", respectively.
SELECT AGE AS EMPLOYEE_AGE, SALARY AS EMPLOYEE_SALARY FROM EMPLOYEES;

-- 3. A)Retrieve employees with a salary greater than ₹50000 and hired before 2016-01-01.
SELECT EMPLOYEE_NAME FROM EMPLOYEES WHERE SALARY>50000 AND HIRE_DATE<'2016-01-01';

-- B)Find the employee whose designation is missing and fill it with "Data Scientist".
UPDATE EMPLOYEES SET DESIGNATION='Data Scientist' WHERE EMPLOYEE_ID=5004;

									
                                    -- SORTING AND GROUPING DATA
                                    
-- 1. Find employees sorted by department ID in ascending order and salary in descending order.
 SELECT * FROM EMPLOYEES ORDER BY DEPARTMENT_ID ASC, SALARY DESC;  
 
 -- 2.Display the first 5 employees hired in the year 2018.
 SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '2018-01-01' AND '2018-12-31' ORDER BY HIRE_DATE ASC LIMIT 5;
 
 -- 3. A)Calculate the sum of all salaries in the Finance department.
 SELECT SUM(SALARY) AS TOTAL_SALARY_FINANCE_DEPT FROM EMPLOYEES WHERE DEPARTMENT_ID=7;
 
 -- B)Find the minimum age among all employees.
 SELECT MIN(AGE) AS MIN_AGE FROM EMPLOYEES;
 
 -- 4.A)List the maximum salary for each location.
 SELECT MAX(SALARY) AS MAX_SALARY FROM EMPLOYEES GROUP BY LOCATION_id;
 
 -- or using join
 SELECT l.LOCATION, MAX(e.SALARY) AS MAX_SALARY
FROM EMPLOYEES e
JOIN LOCATIONS l
    ON e.LOCATION_ID= l.LOCATION_ID
GROUP BY l.LOCATION;

-- B)Calculate the average salary for each designation containing the word'Analyst'.
SELECT DESIGNATION,AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEES WHERE DESIGNATION LIKE '%Analyst%' GROUP BY DESIGNATION;

-- 5.A) Find departments with less than 3 employees.
SELECT DEPARTMENT_ID ,COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEES 
GROUP BY DEPARTMENT_ID
HAVING COUNT(*)<3;

-- B) Find locations with female employees whose average age is below 30.
SELECT LOCATION_ID, AVG(AGE) AS AVERAGE_AGE 
FROM EMPLOYEES 
WHERE GENDER='F'
GROUP BY LOCATION_ID
HAVING AVG(AGE)<30;

-- USING JOIN
SELECT l.LOCATION,AVG(E.AGE) AS AVERAGE_AGE
FROM EMPLOYEES E 
JOIN LOCATIONS L
ON E.LOCATION_ID=L.LOCATION_ID
WHERE GENDER='F'
GROUP BY L.LOCATION
HAVING AVG(E.AGE)<30;

											-- JOINS
                                
-- 1.List employee names, their designations, and department names where employees are assigned to a department.
SELECT e.EMPLOYEE_NAME,e.DESIGNATION,d.DEPARTMENT_NAME 
FROM EMPLOYEES e
JOIN DEPARTMENT_INFO d
ON e.DEPARTMENT_ID=d.DEPARTMENT_ID;

-- 2.List all departments along with the total number of employees in each department, 
-- including departments with no employees.

SELECT d.DEPARTMENT_NAME,COUNT(*) AS EMPLOYEE_COUNT
FROM DEPARTMENT_INFO d
LEFT JOIN EMPLOYEES e
ON d.DEPARTMENT_ID=e.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME;

-- 3.Display all locations along with the names of employees assigned to each location. 
-- If no employees are assigned to a location, display NULL for employee name.
 
SELECT l.LOCATION,e.EMPLOYEE_NAME
FROM EMPLOYEES e
RIGHT JOIN LOCATIONS l
ON e.LOCATION_ID=l.LOCATION_ID;


 
