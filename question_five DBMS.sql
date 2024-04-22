DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;
CREATE TABLE students(
	Sno VARCHAR(100) PRIMARY KEY,
	Sname VARCHAR(255),
	SGPA FLOAT,
	Scity VARCHAR(255),
	Cno VARCHAR(100)
);

INSERT INTO students(Sno, Sname, SGPA, Scity, Cno)
VALUES ('S1', 'Saman', 2.60, 'Kegalle', 'C1'),
		('S2', 'Kamel', 2.45, 'Kandy', 'C2'),
		('S3', 'Joe', 3.20, 'Galle', 'C3'),
		('S4', 'Ruwan', 4.00, 'Kandy', 'C1'),
		('S5', 'Asela', 3.50, 'Jaffna', 'C4'),
		('S6', 'Asanka', 2.88, 'Galle', 'C2'),
		('S7', 'Wasana', 2.75, 'Colombo', 'C3'),
		('S8', 'Dilini', 3.35, 'Kandy', 'C1'),
		('S9', 'Aruna', 2.76, 'Galle', 'C4'),
		('S10', 'Gayani', 3.00, 'Jaffna', 'C4');
		
CREATE TABLE courses(
Cno VARCHAR(50) PRIMARY KEY,
	Cname VARCHAR(255),
	Cduration INT
);

INSERT INTO courses (Cno, Cname, Cduration)
VALUES ('C1', 'HNDA', 4),
		('C2', 'HNDIT', 2),
		('C3', 'HNDM', 3),
		('C4', 'HNDE', 2);
-- a)		
-- Printing all student'sname and GPA		
SELECT Sname, SGPA FROM students;

-- b)
-- Printing name of student with SGPA>3.00
SELECT Sname FROM students WHERE SGPA > 3.00;

-- c)
-- Displaying Cno and number of students from each course
SELECT Cno, COUNT(*) AS num_students FROM students GROUP BY Cno;

-- d)
-- displaying all information Sname, SGPA, and Cname but alias must be created
SELECT S.Sname, S.SGPA, C.Cname FROM students S JOIN courses C ON S.Cno = C.Cno;

-- e)
-- Sorting the student table with ascending order by SGPA
SELECT Sno, Sname, SGPA, Scity, Cno FROM students ORDER BY SGPA ASC;

-- f)
-- ROLES OF A DATABASE ADMINISTRATOR

-- 1. Database Installation and Configuration: Database administrators are responsible for database installation and
-- configuration basing on the needs of the organisation

-- 2. Performance Monitoring: Database administrators are responsible for monitoring the performance of a database by
-- identifying and addressing issues which improves performance and responsiveness.

-- 3. Backup and Recovery: Database administrators are responsible for creating protective measures of data like 
-- backup in order to recover or protect data against issues such as system failures, loss of data and others by scheduling regular backups.

-- 4. Security Management: Database administrators are responsible for database security by protecting data from 
-- unauthorised access, cyber treats

-- 5. Database Design and Optimization: Database administrators are responsible for designing database management systems




