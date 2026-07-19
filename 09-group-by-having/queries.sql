-- Topic: GROUP BY and HAVING
-- GROUP BY groups rows sharing a value, usually combined with an aggregate function.
-- HAVING filters groups AFTER aggregation (unlike WHERE, which filters rows BEFORE).

-- Count students per city
SELECT city, COUNT(*) AS 'total' FROM students GROUP BY city;

-- Count students per gender
SELECT gender, COUNT(*) AS 'total' FROM students GROUP BY gender;

-- Count how many students failed (average <= 50), grouped by average
SELECT average, COUNT(*) AS 'failed_count'
FROM grades
WHERE average <= 50
GROUP BY average;

-- Count students per club
SELECT club, COUNT(*) AS 'total' FROM students GROUP BY club;

-- Same as above, but filtering groups with HAVING instead of WHERE
SELECT average, COUNT(*) AS 'failed_count'
FROM grades
GROUP BY average
HAVING average <= 50;

-- Group by club, but only show the 'Chess' group
SELECT club, COUNT(*) AS 'total'
FROM students
GROUP BY club
HAVING club = 'Chess';
