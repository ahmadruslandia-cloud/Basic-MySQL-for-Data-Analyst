DROP DATABASE IF EXISTS `Parks_and_Recreation`;
CREATE DATABASE `Parks_and_Recreation`;
USE `Parks_and_Recreation`;

CREATE TABLE employee_demographics (
  employee_id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  birth_date DATE,
  PRIMARY KEY (employee_id)
);

CREATE TABLE employee_salary (
  employee_id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  occupation VARCHAR(50),
  salary INT,
  dept_id INT
);

-- The wrong numbering in the employee_id was created intentionally

INSERT INTO employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(1, 'Ahmad', 'Ruslandia', 23, 'Male','2002-02-28'),
(3, 'Tom', 'Haverford', 29, 'Female', '1994-03-27'),
(4, 'April', 'Ludgate', 38, 'Male', '1985-07-26,'),
(5, 'Jerry', 'Gergich', 46, 'Female', '1977-07-30'),
(6, 'Donna', 'Meagle', 35, 'Female', '1988-12-01'),
(7, 'Ann', 'Perkins', 43, 'Male', '1980-11-11'),
(8, 'Chris', 'Traeger', '61', 'Male', '1962-08-28'),
(9, 'Ben', 'Wyatt', 23, 'Female', '2002-02-27'),
(10, 'Andy', 'Dwyer', 40, 'Male', '1983-06-14'),
(11, 'Mark', 'Brendanawicz', 37, 'Male', '1986-07-27'),
(12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(1, 'Ahmad', 'Ruslandia', 'Apprenticeship', 20000,1),
(2, 'Ron', 'Swanson', 'IT Specialist', 50000,1),
(3, 'Tom', 'Haverford', 'Assistant IT', 35000,1),
(4, 'April', 'Ludgate', 'IT Supervisor', 75000,1),
(5, 'Jerry', 'Gergich', 'Analyst IT', 50000,1),
(6, 'Donna', 'Meagle', 'Office Manager', 55000,4),
(7, 'Ann', 'Perkins', 'Manager', 90000,3),
(8, 'Chris', 'Traeger', 'Office Manager', 55000,4),
(9, 'Ben', 'Wyatt', 'Summer Intern', 11000, NULL),
(10, 'Andy', 'Dwyer', 'Sechedule & Planner', 65000, 3),
(11, 'Mark', 'Brendanawicz', 'Accountant Staff', 65000,2),
(12, 'Craig', 'Middlebrooks', 'Accountant Staff', 65000,2);


CREATE TABLE parks_departments (
  department_id INT NOT NULL AUTO_INCREMENT,
  department_name varchar(50) NOT NULL,
  PRIMARY KEY (department_id)
);

INSERT INTO parks_departments (department_name)
VALUES
('Information Technology'),
('Finance'),
('Human Resource'),
('Industrial Relations'),
('Mechanical Engineering'),
('Safety');













