-- ===========================================
-- Library Management System - Database Schema
-- ===========================================

CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

DROP TABLE IF EXISTS Borrowings;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Categories;
DROP TABLE IF EXISTS Members;

-- Members table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    RegistrationDate DATE NOT NULL
);

-- Categories table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL UNIQUE
);

-- Books table (YearPublished as INT to allow all years)
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    Author VARCHAR(100),
    ISBN VARCHAR(13) UNIQUE,
    YearPublished INT,
    CopiesAvailable INT DEFAULT 1,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Borrowings table
CREATE TABLE Borrowings (
    BorrowID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT NOT NULL,
    BookID INT NOT NULL,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);