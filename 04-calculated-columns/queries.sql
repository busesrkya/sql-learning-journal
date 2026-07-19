-- Topic: Calculated columns in SELECT
-- You can perform arithmetic directly inside a SELECT statement.

-- Calculate the average of three exam scores on the fly
SELECT (exam1 + exam2 + exam3) / 3 FROM grades;
