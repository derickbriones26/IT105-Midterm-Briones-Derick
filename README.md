# Library Management System Database

## Project Title

Library Management System Database

## System Description

A relational database for a small library that tracks members, books, borrowings, and categories. The system allows the library to manage member registrations, book inventory, borrowing and return transactions, and book categorization. It is designed to be efficient, scalable, and maintain data integrity.

## Tables Description

| Table          | Description                                                                                                                                                                                    |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Members**    | Stores member information: MemberID (Primary Key), FirstName, LastName, Email (unique), Phone, RegistrationDate.                                                                               |
| **Categories** | Stores book categories: CategoryID (Primary Key), CategoryName (unique).                                                                                                                       |
| **Books**      | Stores book details: BookID (Primary Key), Title, Author, ISBN (unique), YearPublished, CopiesAvailable, CategoryID (Foreign Key referencing Categories).                                      |
| **Borrowings** | Records borrowing transactions: BorrowID (Primary Key), MemberID (Foreign Key referencing Members), BookID (Foreign Key referencing Books), BorrowDate, ReturnDate (NULL if not yet returned). |

## Features Implemented

- **Database Design:** 4 tables with primary keys, foreign keys, and constraints (NOT NULL, UNIQUE, DEFAULT).
- **Normalization:** Transformed from UNF → 1NF → 2NF → 3NF (documented in `docs/normalization.md`).
- **SQL Operations:** All required commands included in `sql/queries.sql`:
  - SELECT
  - INSERT
  - UPDATE
  - DELETE
  - JOIN (inner join across three tables)
  - SUBQUERY
- **Indexing:** Demonstrated on `Members.LastName` – compared query performance before and after index creation (documented in `docs/indexing.md`).
- **Sample Data:** At least 10 records per table (Categories: 10, Members: 11, Books: 12, Borrowings: 14).
- **Version Control:** Multiple commits using Git, public repository on GitHub.

## Reflection (What I learned)

Working on this project gave me hands-on experience in designing and implementing a relational database from scratch. I learned how to:

- **Apply normalization rules** (UNF → 3NF) to eliminate redundancy and improve data integrity.
- **Write SQL statements** for creating tables, inserting data, and querying with SELECT, INSERT, UPDATE, DELETE, JOIN, and subqueries.
- **Use indexing** to speed up searches – I saw how a full table scan becomes an efficient index lookup, and I understand the trade-offs (faster reads, slightly slower writes).
- **Manage a project with Git** – making atomic commits with clear messages helped me track my progress.
- **Document a database project** professionally, including a README, normalization explanation, and indexing demonstration.

This project reflects the topics covered in Weeks 1–7 of IT 105 – Information Management I. It helped me understand how real-world information systems rely on well-designed databases to store, retrieve, and manage data effectively.
