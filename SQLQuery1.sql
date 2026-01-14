--CREATE DATABASE lab8;


--USE lab8;
--GO

------CREATE TABLE Student
------(

------id INT IDENTITY (1,1) PRIMARY KEY,
------Fullname NVARCHAR(100) NOT NULL,
------Birthday DATE NOT NULL

------);


----INSERT INTO Student (Fullname,Birthday)
----VALUES

----('Emil Najafov', '2000-03-12'),
----('Ali Mammadov', '1999-07-25'),
----('Nigar Aliyeva', '2001-01-05'),
----('Orxan Huseynov', '1998-11-18'),
----('Aysel Quliyeva', '2002-06-30'),
----('Kamran Abdullayev', '1997-09-14'),
----('Lale Rahimova', '2000-12-22'),
----('Rashad Karimov', '1999-04-09'),
----('Gunel Ismayilova', '2001-08-16'),
----('Elvin Taghiyev', '1998-02-27');




----SELECT*FROM Student
----WHERE Fullname LIKE '%b%';

----SELECT*FROM Student
----WHERE Birthday <'2005-01-01';

----SELECT*FORM Student
----WHERE DATEDIFF(YEAR,Birthday,GETDATE())<20;


----ALTER TABLE Student 
----ADD Email NVARCHAR(150);

----UPDATE Student 
----SET Email = LOVER(REPLACE(Fullname,' ',' '))+ '@mail.com';

----SELECT Fullname, Email FROM Student



----UPDATE Student
----SET Email = 'newemail@mail.com'
----WHERE Id = 3;

----DELETE FROM Student
----WHERE Id = 7;

----SELECT * FROM Student;


--CREATE TABLE Course
--(
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    Name NVARCHAR(100) NOT NULL
--);


--INSERT INTO Course (Name)
--VALUES
--('Programming'),
--('Database'),
--('Web Development');


----SELECT * FROM Course;




----ALTER TABLE Student
----ADD CourseId INT;


----ALTER TABLE Student
----ADD CONSTRAINT FK_Student_Course
----FOREIGN KEY (CourseId) REFERENCES Course(Id);


----UPDATE Student SET CourseId = 1 WHERE Id IN (1,2,3);
----UPDATE Student SET CourseId = 2 WHERE Id IN (4,5,6);
----UPDATE Student SET CourseId = 3 WHERE Id IN (8,9,10);


----SELECT * FROM Student;

----SELECT 
----    Student.FullName AS StudentName,
----    Course.Name AS CourseName
----FROM Student
----INNER JOIN Course ON Student.CourseId = Course.Id;




----CREATE TABLE Shop
----(
----    Id INT IDENTITY(1,1) PRIMARY KEY,
----    Name NVARCHAR(100) NOT NULL,
----    Location NVARCHAR(100) NOT NULL
----);

----CREATE TABLE Category
----(
----    Id INT IDENTITY(1,1) PRIMARY KEY,
----    Name NVARCHAR(100) NOT NULL
----);

----CREATE TABLE Product
----(
----    Id INT IDENTITY(1,1) PRIMARY KEY,
----    Name NVARCHAR(100) NOT NULL,
----    Count INT NOT NULL,
----    ShopId INT,
----    CategoryId INT,
----    FOREIGN KEY (ShopId) REFERENCES Shop(Id),
----    FOREIGN KEY (CategoryId) REFERENCES Category(Id)
----);



----INSERT INTO Shop (Name, Location)
----VALUES
----('Bravo', 'Baku'),
----('Araz', 'Ganja'),
----('Rahat', 'Baku');

----INSERT INTO Category (Name)
----VALUES
----('Food'),
----('Electronics'),
----('Drinks');

----INSERT INTO Product (Name, Count, ShopId, CategoryId)
----VALUES
----('Milk', 15, 1, 1),
----('Bread', 5, 1, 1),
----('TV', 3, 1, 2),
----('Cola', 20, 3, 3),
----('Water', 50, 2, 3),
----('Phone', 12, 1, 2);

----SELECT * FROM Shop;


----SELECT * FROM Shop
----WHERE Location = 'Baku';


----SELECT * FROM Product
----WHERE Count > 10;


----SELECT * FROM Product
----ORDER BY Count DESC;







--CREATE TABLE Hospital
--(
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    Name NVARCHAR(100) NOT NULL,
--    Address NVARCHAR(200) NOT NULL
--);

--CREATE TABLE Speciality
--(
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    Name NVARCHAR(100) NOT NULL
--);

--CREATE TABLE Doctor
--(
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    Name NVARCHAR(100) NOT NULL,
--    SpecialityId INT NULL,
--    HospitalId INT NOT NULL,
--    FOREIGN KEY (SpecialityId) REFERENCES Speciality(Id),
--    FOREIGN KEY (HospitalId) REFERENCES Hospital(Id)
--);


--CREATE TABLE Branch
--(
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    Name NVARCHAR(100) NOT NULL,
--    Location NVARCHAR(100) NOT NULL
--);

--CREATE TABLE CarCategory
--(
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    Name NVARCHAR(100) NOT NULL
--);

--CREATE TABLE Car
--(
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    PlateNumber NVARCHAR(20) NOT NULL,
--    CategoryId INT NOT NULL,
--    BranchId INT NOT NULL,
--    FOREIGN KEY (CategoryId) REFERENCES CarCategory(Id),
--    FOREIGN KEY (BranchId) REFERENCES Branch(Id)
--);



--INSERT INTO Hospital (Name, Address)
--VALUES
--('Central Hospital', 'Baku'),
--('MediClub', 'Ganja');

--INSERT INTO Speciality (Name)
--VALUES
--('Cardiologist'),
--('Dentist'),
--('Surgeon');

--INSERT INTO Doctor (Name, SpecialityId, HospitalId)
--VALUES
--('Dr. Ali', 1, 1),
--('Dr. Nigar', 2, 1),
--('Dr. Kamran', NULL, 1),
--('Dr. Ley
