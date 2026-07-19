-- Topic: UPDATE - modifying existing rows

-- Update a single row by id
UPDATE students SET gender = 'F' WHERE student_id = 2;

-- Update multiple rows using OR
UPDATE students SET gender = 'F' WHERE student_id = 4 OR student_id = 2;

-- Update based on a column value instead of an id
UPDATE students SET club = 'Chess' WHERE first_name = 'Baran';

-- Update a column using a calculation based on other columns
UPDATE grades SET average = (exam1 + exam2 + exam3) / 3;

-- Update status based on the calculated average
UPDATE grades SET status = 1 WHERE average > 50;
UPDATE grades SET status = 0 WHERE average <= 50;
