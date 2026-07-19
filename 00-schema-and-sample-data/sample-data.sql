-- Sample data to populate the schema.
-- Run this after schema.sql so the queries in every other folder
-- return real, non-empty results.

INSERT INTO courses (course_id, course_name, capacity) VALUES
(1, 'Algorithms', 30),
(2, 'Databases', 25),
(3, 'Web Development', 20);

INSERT INTO students (student_id, first_name, last_name, city, club, gender) VALUES
(1, 'Ali', 'Demir', 'Mugla', 'Badminton', 'M'),
(2, 'Elif', 'Sahin', 'Adana', 'Chess', 'F'),
(3, 'Baran', 'Yucedag', 'Antalya', 'Chess', 'M'),
(4, 'Zeynep', 'Kaya', 'Mugla', 'Badminton', 'F'),
(5, 'Mert', 'Aydin', 'Adana', 'Basketball', 'M'),
(6, 'Elif', 'Yildiz', 'Antalya', 'Chess', 'F');

INSERT INTO grades (grade_id, student_id, course_id, exam1, exam2, exam3, average, status) VALUES
(1, 1, 1, 80, 70, 90, 80.00, 1),
(2, 2, 2, 45, 50, 40, 45.00, 0),
(3, 3, 1, 60, 65, 70, 65.00, 1),
(4, 4, 3, 30, 40, 35, 35.00, 0),
(5, 5, 2, 90, 85, 95, 90.00, 1),
(6, 6, 2, 55, 78, 100, 77.67, 1);
