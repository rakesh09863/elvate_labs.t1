
CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Authors (
  AuthorID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100)
);
INSERT INTO Authors (Name) VALUES ('rakesh');
INSERT INTO Authors (Name) VALUES ('ravi');
INSERT INTO Authors (Name) VALUES ('summi');
INSERT INTO Authors (Name) VALUES ('ramu');
INSERT INTO Authors (Name) VALUES ('guru');
INSERT INTO Authors (Name) VALUES ('vignesh');
INSERT INTO Authors (Name) VALUES ('ek');

select * from authors;
CREATE TABLE Categories (
  CategoryID INT PRIMARY KEY AUTO_INCREMENT,
  CategoryName VARCHAR(50)
);
INSERT INTO Categories (CategoryName) VALUES ('Fantasy');
INSERT INTO Categories (CategoryName) VALUES ('Science Fiction');
INSERT INTO Categories (CategoryName) VALUES ('Romance');
INSERT INTO Categories (CategoryName) VALUES ('Romance');
INSERT INTO Categories (CategoryName) VALUES ('funny');
select * from categories;

CREATE TABLE Books (
  BookID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(100),
  AuthorID INT,
  CategoryID INT,
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
  FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('Harry Potter', 1, 1);
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('naruto', 2, 2);
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('sololeveling', 3, 3);
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('jannu', 4, 4);
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('harry', 5, 5);

select * from Books;
rollback;
select * from books;

CREATE TABLE Members (
  MemberID INT PRIMARY KEY AUTO_INCREMENT,
  FullName VARCHAR(100),
  Email VARCHAR(100)
);
INSERT INTO Members (FullName, Email) VALUES ('rakesh', 'rakesh@gamil.com');
INSERT INTO Members (FullName, Email) VALUES ('ravi', 'ravi@gmail.com');
INSERT INTO Members (FullName, Email) VALUES ('summi', 'summi@gmail.com');
INSERT INTO Members (FullName, Email) VALUES ('guru', 'guru@gmail.com');

select * from Members;
CREATE TABLE Borrowings (
  BorrowID INT PRIMARY KEY AUTO_INCREMENT,
  BookID INT,
  MemberID INT,
  BorrowDate DATE,
  ReturnDate DATE,
  FOREIGN KEY (BookID) REFERENCES Books(BookID),
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
INSERT INTO Borrowings (BookID, MemberID, BorrowDate, ReturnDate)
VALUES (1, 1, '2024-06-01', '2024-06-15');

INSERT INTO Borrowings (BookID, MemberID, BorrowDate, ReturnDate)
VALUES (2, 2, '2024-06-10', '2024-06-20');
INSERT INTO Borrowings (BookID, MemberID, BorrowDate, ReturnDate)
VALUES (2, 2, '2023-01-20', '2023-05-10');
INSERT INTO Borrowings (BookID, MemberID, BorrowDate, ReturnDate)
VALUES (3, 3, '2024-06-10', '2024-08-21');

select * from Borrowings;
rollback;
show databases;
select * from Authors;
