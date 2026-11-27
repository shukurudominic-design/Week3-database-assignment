# SQL Assignment – Week 3: Transactions and Data Changes

## Overview
This assignment practices managing changes to data in the `sales` database using SQL statements and transactions. It covers creating a table, inserting records, and updating a record, with `START TRANSACTION` and `COMMIT` used to group the data changes.

## Repository Contents

| File | Description |
|------|-------------|
| `week3_queries.sql` | SQL statements for Questions 1–3 |
| `README.md` | Project documentation |
| `screenshots` | Proofs of the sql runs |

## Setup Instructions

1. Make sure the `sales` database exists (run `salesdb.sql` from Week 2 if needed).
2. Run the Week 3 script:
   ```bash
   mysql -u root -p < week3_queries.sql
   ```
   Or open `week3_queries.sql` in MySQL Workbench and click the lightning bolt to run it.
3. The final `SELECT * FROM student;` displays the result.

## Questions and Solutions

### Question 1: Create the `student` table
```sql
CREATE TABLE student (
    id       INT PRIMARY KEY,
    fullName VARCHAR(100),
    age      INT
);
```
- `id` is an integer and the primary key.
- `fullName` is a text field with a maximum of 100 characters (`VARCHAR(100)`).
- `age` is an integer.

### Question 2: Insert at least 3 records
```sql
START TRANSACTION;

INSERT INTO student (id, fullName, age)
VALUES (1, 'John Kamau', 19),
       (2, 'Mary Wanjiku', 18),
       (3, 'Peter Otieno', 21);

COMMIT;
```

### Question 3: Update the age of the student with ID 2 to 20
```sql
START TRANSACTION;

UPDATE student
SET age = 20
WHERE id = 2;

COMMIT;
```

## Expected Result

| id | fullName | age |
|----|----------|-----|
| 1 | John Kamau | 19 |
| 2 | Mary Wanjiku | 20 |
| 3 | Peter Otieno | 21 |

## Notes
- `CREATE TABLE` causes an implicit commit in MySQL, so it is run before the transactions.
- The `WHERE id = 2` clause ensures only one student is updated.
- `COMMIT` saves the changes permanently; `ROLLBACK` would undo them.

## Author
**Name:** Ayom Leek
**Course:** Sql Database Management Fundamentals
