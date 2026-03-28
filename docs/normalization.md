# Normalization of Library Management System

## UNF (Unnormalized Form)

A single table with repeating groups.

| MemberID | Name           | Phone   | BooksBorrowed (repeating)          | BorrowDates (repeating) |
| -------- | -------------- | ------- | ---------------------------------- | ----------------------- |
| 1        | Juan Dela Cruz | 0917... | Noli Me Tangere, El Filibusterismo | 2025-03-01, 2025-03-02  |

**Problems:** Redundancy, update anomalies, difficult to query.

## 1NF (First Normal Form)

Remove repeating groups – one row per borrowed book.

| MemberID | Name           | Phone   | BookTitle         | BorrowDate |
| -------- | -------------- | ------- | ----------------- | ---------- |
| 1        | Juan Dela Cruz | 0917... | Noli Me Tangere   | 2025-03-01 |
| 1        | Juan Dela Cruz | 0917... | El Filibusterismo | 2025-03-02 |

**Improvement:** No repeating groups.  
**Remaining:** Partial dependency (Member details depend only on MemberID).

## 2NF (Second Normal Form)

Split into Members and Borrowings tables.

**Members**  
| MemberID | Name | Phone |
|----------|------|-------|
| 1 | Juan Dela Cruz | 0917... |

**Borrowings**  
| MemberID | BookTitle | BorrowDate |
|----------|-----------|------------|
| 1 | Noli Me Tangere | 2025-03-01 |
| 1 | El Filibusterismo | 2025-03-02 |

**Improvement:** Member details stored once.  
**Remaining:** Transitive dependency (BookTitle depends on BookID, but no Book table).

## 3NF (Third Normal Form)

Add a Books table to remove transitive dependency.

**Books**  
| BookID | Title | Author | ISBN | CopiesAvailable |
|--------|-------|--------|------|-----------------|
| 1 | Noli Me Tangere | Jose Rizal | ... | 3 |

**Borrowings**  
| BorrowID | MemberID | BookID | BorrowDate | ReturnDate |
|----------|----------|--------|------------|------------|
| 1 | 1 | 1 | 2025-03-01 | NULL |

**Final tables:** Members, Categories, Books, Borrowings – all in 3NF, no redundancy.
