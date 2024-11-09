CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    EnrollmentDate DATE,
    City VARCHAR(50)
);
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100)
);


CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    CompletionStatus VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students (StudentID, Name, EnrollmentDate, City)
VALUES 
(1, 'Arjun Sharma', '2023-01-15', 'Mumbai'),
(2, 'Priya Patel', '2022-07-20', 'Delhi'),
(3, 'Ravi Gupta', '2022-10-05', 'Bangalore'),
(4, 'Neha Reddy', '2023-02-17', 'Hyderabad'),
(5, 'Anil Kumar', '2021-11-11', 'Pune'),
(6, 'Sunita Mehta', '2023-01-25', 'Chennai'),
(7, 'Kiran Joshi', '2023-03-01', 'Mumbai'),
(8, 'Rahul Singh', '2022-12-22', 'Delhi'),
(9, 'Nisha Verma', '2023-02-05', 'Jaipur'),
(10, 'Amit Desai', '2023-03-05', 'Mumbai');

-- Insert Courses data
INSERT INTO Courses (CourseID, CourseName, Instructor)
VALUES
(101, 'Data Science', 'Dr. Malhotra'),
(102, 'Web Development', 'Ms. Rao'),
(103, 'Machine Learning', 'Dr. Sharma'),
(104, 'Cloud Computing', 'Mr. Kapoor'),
(105, 'Cybersecurity', 'Mr. Singh');

-- Insert Enrollments data
INSERT INTO Enrollments (StudentID, CourseID, CompletionStatus)
VALUES
(1, 101, 'Completed'),
(1, 102, 'Completed'),
(2, 103, 'Completed'),
(2, 104, 'In Progress'),
(3, 101, 'Completed'),
(4, 101, 'Completed'),
(4, 103, 'Completed'),
(5, 102, 'Completed'),
(6, 101, 'In Progress'),
(6, 105, 'Completed'),
(7, 103, 'Completed'),
(7, 105, 'Completed'),
(8, 104, 'In Progress'),
(8, 105, 'Completed'),
(9, 101, 'In Progress'),
(9, 102, 'Completed'),
(10, 104, 'Completed'),
(10, 105, 'Completed');

SELECT * FROM Enrollments ; SELECT * FROM COURSES; SELECT * FROM STUDENTS;
/*
Write a function that finds all students who have completed at least two different courses
 and returns a DataFrame with the columns StudentID, Name, and CoursesCompleted.*/
 
 SELECT 
	S.STUDENTID,
    S.NAME,
    SUM(CASE WHEN E.CompletionStatus = 'Completed' THEN 1 ELSE 0 END )AS CoursesCompleted
FROM STUDENTS AS S LEFT JOIN Enrollments AS E
	ON S.StudentID = E.StudentID
LEFT JOIN COURSES AS C
	ON C.CourseID = E.CourseID
GROUP BY S.STUDENTID
HAVING SUM(CASE WHEN E.CompletionStatus = 'Completed' THEN 1 ELSE 0 END ) >= 2 ;