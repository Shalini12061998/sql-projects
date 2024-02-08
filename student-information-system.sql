-- Create Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

-- Create Course table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    Title VARCHAR(100),
    Description TEXT,
    Credits INT
);

-- Create Enrollment table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade DECIMAL(3, 2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert sample data into Student table
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone)
VALUES 
(1, 'John', 'Doe', '2000-05-15', 'Male', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane', 'Smith', '2001-08-20', 'Female', 'jane.smith@example.com', '987-654-3210');

-- Insert sample data into Course table
INSERT INTO Course (CourseID, Title, Description, Credits)
VALUES 
(1, 'Introduction to Computer Science', 'Introduction to programming concepts and problem-solving techniques.', 3),
(2, 'Database Management Systems', 'Introduction to database design, implementation, and management.', 4);

-- Insert sample data into Enrollment table
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentDate, Grade)
VALUES 
(1, 1, 1, '2023-01-10', 3.5),
(2, 1, 2, '2023-01-15', 4),
(3, 2, 1, '2023-01-12', 3.7);

-- Retrieve all students
SELECT * FROM Student;

-- Retrieve all courses
SELECT * FROM Course;

-- Retrieve all enrollments
SELECT * FROM Enrollment;

-- Retrieve courses taken by a specific student
SELECT Course.* FROM Course
JOIN Enrollment ON Course.CourseID = Enrollment.CourseID
WHERE Enrollment.StudentID = 1;

-- Update grade for a specific enrollment
UPDATE Enrollment SET Grade = 4.2 WHERE EnrollmentID = 1;

-- Delete an enrollment
DELETE FROM Enrollment WHERE EnrollmentID = 3;

