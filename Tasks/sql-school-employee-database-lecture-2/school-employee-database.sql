-- TASK-1 --

CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Students(
	Student_ID INT PRIMARY KEY,
	StudentName VARCHAR(50),
	Age INT,
	Course VARCHAR(20),
	Marks INT
);

INSERT INTO Students(
	Student_ID,
	StudentName,
	Age,
	Course,
	Marks
) VALUES
(01,'Shubham',19,'Data Analytics',78),
(02,'Prashant',18,'Data Science',89),
(03,'Anand',20,'Data Analytics',56),
(04,'Neha',19,'Data Science',68),
(05,'Priya',19,'Data Analytics',81);

SELECT * FROM Students;


CREATE TABLE Employees(
	Emp_ID INT PRIMARY KEY,
	Emp_Name VARCHAR(50),
	Department VARCHAR(50),
	Salary DECIMAL,
	Date_Joined DATE,
)

INSERT INTO Employees(
	Emp_ID,
	Emp_Name,
	Department,
	Salary,
	Date_Joined
) VALUES 
(111, 'Suhani', 'HR', 35065.89, '2021-12-28'),
(112, 'Sushant', 'Data Science', 47892.22, '2021-12-28'),
(113, 'Harpreet', 'Account', 30065.89, '2021-12-28');

SELECT * FROM Employees;