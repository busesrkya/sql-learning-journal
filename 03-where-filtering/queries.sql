-- Topic: Filtering rows with WHERE, AND, OR

-- Filter by a single condition
SELECT * FROM students WHERE first_name = 'Ali';

-- Select a specific column with a condition
SELECT city FROM students WHERE first_name = 'Ali';

-- Combine two conditions with AND (both must be true)
SELECT * FROM students WHERE city = 'Mugla' AND club = 'Badminton';

-- Combine two conditions with OR (either can be true)
SELECT * FROM students WHERE city = 'Mugla' OR club = 'Chess';
