-- Topic: INSERT INTO - adding new rows

-- Insert a new student (only some columns provided)
INSERT INTO students (first_name, last_name, city)
VALUES ('Deniz', 'Aksoy', 'Bursa');

-- Insert a new grade record for an existing student (grade_id chosen explicitly)
INSERT INTO grades (grade_id, student_id, exam1, exam3)
VALUES (7, 1, 72, 87);

-- Insert a full grade record with all columns
INSERT INTO grades (grade_id, student_id, course_id, exam1, exam2, exam3)
VALUES (8, 6, 2, 55, 78, 100);
