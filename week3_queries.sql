-- =====================================================
-- Assignment: Week 3 - Transactions and Data Changes
-- Database  : sales
-- =====================================================
 
USE sales;

-- -----------------------------------------------------
-- Question 1: Create the student table
-- (CREATE TABLE causes an implicit commit in MySQL,
--  so it is run before the transactions below)
-- -----------------------------------------------------
DROP TABLE IF EXISTS student;
 
CREATE TABLE student (
    id       INT PRIMARY KEY,
    fullName VARCHAR(100),
    age      INT
);

-- -----------------------------------------------------
-- Question 2: Insert at least 3 records
-- -----------------------------------------------------
START TRANSACTION;
 
INSERT INTO student (id, fullName, age)
VALUES (1, 'John Kamau', 19),
       (2, 'Mary Wanjiku', 18),
       (3, 'Peter Otieno', 21);
 
COMMIT;

-- -----------------------------------------------------
-- Question 3: Update the age of the student with ID 2 to 20
-- -----------------------------------------------------
START TRANSACTION;
 
UPDATE student
SET age = 20
WHERE id = 2;
 
COMMIT;
 
-- Verify the final result
SELECT * FROM student;
 
