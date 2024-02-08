-- Create Book table
CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    PublicationDate DATE,
    Available BOOLEAN
);

-- Create Member table
CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Create Checkout table
CREATE TABLE Checkout (
    CheckoutID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    CheckoutDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

-- Insert sample data into Book table
INSERT INTO Book (BookID, Title, Author, Genre, PublicationDate, Available)
VALUES 
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960-07-11', TRUE),
(2, '1984', 'George Orwell', 'Science Fiction', '1949-06-08', TRUE),
(3, 'Pride and Prejudice', 'Jane Austen', 'Romance', '1813-01-28', TRUE);

-- Insert sample data into Member table
INSERT INTO Member (MemberID, FirstName, LastName, Email)
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com');

-- Insert sample data into Checkout table
INSERT INTO Checkout (CheckoutID, BookID, MemberID, CheckoutDate, ReturnDate)
VALUES 
(1, 1, 1, '2023-01-15', '2023-02-15'),
(2, 2, 2, '2023-02-01', '2023-03-01');

-- Retrieve all books
SELECT * FROM Book;

-- Retrieve available books
SELECT * FROM Book WHERE Available = TRUE;

-- Retrieve all members
SELECT * FROM Member;

-- Retrieve all checkouts
SELECT * FROM Checkout;

-- Retrieve books checked out by a specific member
SELECT Book.* FROM Book
JOIN Checkout ON Book.BookID = Checkout.BookID
WHERE Checkout.MemberID = 1;

-- Update return date for a checkout
UPDATE Checkout SET ReturnDate = '2023-02-28' WHERE CheckoutID = 1;

-- Update availability of a book
UPDATE Book SET Available = FALSE WHERE BookID = 1;

-- Delete a checkout
DELETE FROM Checkout WHERE CheckoutID = 2;

