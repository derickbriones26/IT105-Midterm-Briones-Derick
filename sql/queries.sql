USE LibraryDB;

-- SELECT
SELECT * FROM Members;

-- INSERT
INSERT INTO Members (FirstName, LastName, Email, Phone, RegistrationDate)
VALUES ('Test', 'User', 'test.user@email.com', '09998887777', CURDATE());

-- UPDATE
UPDATE Members SET Phone = '09991234567' WHERE MemberID = 1;

-- DELETE (safe example – uses an ID that doesn't exist)
DELETE FROM Members WHERE MemberID = 99;

-- JOIN
SELECT m.FirstName, m.LastName, b.Title, br.BorrowDate, br.ReturnDate
FROM Borrowings br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID;

-- SUBQUERY
SELECT FirstName, LastName
FROM Members
WHERE MemberID IN (
    SELECT MemberID FROM Borrowings WHERE BookID = 1
);