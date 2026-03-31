# Indexing Demonstration

## What Changed?

- **Without index:** MySQL scanned all rows (full table scan).
- **With index:** MySQL used the index to jump directly to the rows that satisfy the condition (range scan).

The `EXPLAIN` command confirms the change:

- Before: `type = ALL`, `key = NULL`
- After: `type = range`, `key = idx_lastname`

## Why Faster?

An index works like the index of a book. Instead of reading every page to find a topic, you go to the index, find the page number, and turn directly to it.

- **Fewer rows examined** – only matching rows are accessed.
- **Less disk I/O** – fewer data pages are read from storage.
- **Logarithmic search** – B‑tree indexes allow the database to find rows in O(log n) time, not O(n).

## Why Indexing Is Important?

- **Speed:** Dramatically improves SELECT query performance, especially on large tables.
- **Scalability:** As data grows, indexes keep queries responsive.
- **User Experience:** Faster database operations lead to better application performance.
- **Resource Efficiency:** Reduces CPU and memory usage during query execution.
