-- Topic: Aggregate functions - COUNT, SUM, AVG, MAX

-- Count all rows
SELECT COUNT(*) FROM students;

-- Count with a column alias
SELECT COUNT(*) AS 'total_count' FROM students;

-- Count with a filter condition
SELECT COUNT(*) AS 'total_count' FROM students WHERE city = 'Adana';

-- Sum of each exam column
SELECT SUM(exam1), SUM(exam2), SUM(exam3) FROM grades;

-- Average of each exam column
SELECT AVG(exam1), AVG(exam2), AVG(exam3) FROM grades;

-- Maximum score of each exam column
SELECT MAX(exam1), MAX(exam2), MAX(exam3) FROM grades;
