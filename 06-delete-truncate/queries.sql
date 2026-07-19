-- Topic: DELETE vs TRUNCATE
-- DELETE removes specific rows based on a condition (can be rolled back, slower).
-- TRUNCATE removes ALL rows from a table at once (faster, resets the table).

-- Delete rows matching a condition
-- (grades doesn't store the course name directly, only course_id --
-- course_id 1 corresponds to 'Algorithms' in the courses table)
DELETE FROM grades WHERE course_id = 1;

-- Delete rows matching multiple ids
DELETE FROM students WHERE student_id = 1002 OR student_id = 1003;

-- Remove every row from the courses table
TRUNCATE TABLE courses;
