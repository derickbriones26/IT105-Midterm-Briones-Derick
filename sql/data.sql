USE LibraryDB;

-- Categories (10)
INSERT INTO Categories (CategoryName) VALUES
('Fiction'), ('Non-Fiction'), ('Science'), ('History'),
('Biography'), ('Children'), ('Technology'), ('Art'),
('Philosophy'), ('Self-Help');

-- Members (11)
INSERT INTO Members (FirstName, LastName, Email, Phone, RegistrationDate) VALUES
('Juan', 'Dela Cruz', 'juan.delacruz@email.com', '09171234567', '2025-01-10'),
('Maria', 'Santos', 'maria.santos@email.com', '09181234568', '2025-01-15'),
('Jose', 'Rizal', 'jose.rizal@email.com', '09191234569', '2025-01-20'),
('Andres', 'Bonifacio', 'andres.bonifacio@email.com', '09201234570', '2025-02-01'),
('Emilio', 'Aguinaldo', 'emilio.aguinaldo@email.com', '09211234571', '2025-02-05'),
('Gabriela', 'Silang', 'gabriela.silang@email.com', '09221234572', '2025-02-10'),
('Apolinario', 'Mabini', 'apolinario.mabini@email.com', '09231234573', '2025-02-15'),
('Melchora', 'Aquino', 'melchora.aquino@email.com', '09241234574', '2025-02-20'),
('Antonio', 'Luna', 'antonio.luna@email.com', '09251234575', '2025-03-01'),
('Gregoria', 'de Jesus', 'gregoria.dejesus@email.com', '09261234576', '2025-03-05'),
('Leona', 'Florentino', 'leona.florentino@email.com', '09271234577', '2025-03-10');

-- Books (12)
INSERT INTO Books (Title, Author, ISBN, YearPublished, CopiesAvailable, CategoryID) VALUES
('Noli Me Tangere', 'Jose Rizal', '9789715084527', 1887, 3, 1),
('El Filibusterismo', 'Jose Rizal', '9789715084534', 1891, 2, 1),
('A Brief History of Time', 'Stephen Hawking', '9780553380163', 1988, 2, 3),
('The Selfish Gene', 'Richard Dawkins', '9780199291151', 1976, 1, 2),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', '9780062316097', 2011, 4, 4),
('The Art of War', 'Sun Tzu', '9781590302255', -500, 5, 4),
('Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', 2009, 1, 7),
('The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 1951, 2, 1),
('Becoming', 'Michelle Obama', '9781524763138', 2018, 3, 5),
('Atomic Habits', 'James Clear', '9780735211292', 2018, 3, 10),
('Python Crash Course', 'Eric Matthes', '9781593279288', 2019, 2, 7),
('The Silent Patient', 'Alex Michaelides', '9781250301697', 2019, 1, 1);

-- Borrowings (14)
INSERT INTO Borrowings (MemberID, BookID, BorrowDate, ReturnDate) VALUES
(1, 1, '2025-03-01', '2025-03-08'),
(2, 2, '2025-03-02', NULL),
(3, 3, '2025-03-03', '2025-03-10'),
(4, 4, '2025-03-04', NULL),
(5, 5, '2025-03-05', '2025-03-12'),
(6, 6, '2025-03-06', NULL),
(7, 7, '2025-03-07', '2025-03-14'),
(8, 8, '2025-03-08', NULL),
(9, 9, '2025-03-09', '2025-03-16'),
(10, 10, '2025-03-10', NULL),
(11, 11, '2025-03-11', '2025-03-18'),
(1, 12, '2025-03-12', NULL),
(2, 5, '2025-03-13', '2025-03-20'),
(3, 8, '2025-03-14', NULL);