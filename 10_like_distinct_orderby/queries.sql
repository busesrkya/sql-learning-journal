-- =====================================================
-- TOPIC: DISTINCT, ORDER BY, LIKE
-- =====================================================

-- =====================================================
-- 1. DISTINCT
-- Returns only unique values, removes duplicate rows
-- =====================================================

-- List each unique city, no duplicates
SELECT DISTINCT City
FROM Students;

-- Unique (City, Department) combinations
SELECT DISTINCT City, Department
FROM Students;

-- Count how many unique cities exist
SELECT COUNT(DISTINCT City) AS UniqueCityCount
FROM Students;


-- =====================================================
-- 2. ORDER BY
-- Sorts result set: ASC (default) or DESC
-- =====================================================

-- Sort students by GPA, highest first
SELECT StudentName, GPA
FROM Students
ORDER BY GPA DESC;

-- Sort by Department alphabetically, then GPA descending within each department
SELECT StudentName, Department, GPA
FROM Students
ORDER BY Department ASC, GPA DESC;

-- Sort by column position instead of name (works, but less readable)
SELECT StudentName, GPA
FROM Students
ORDER BY 2 DESC;


-- =====================================================
-- 3. LIKE
-- Pattern matching with wildcards:
--   %  -> any sequence of characters (zero or more)
--   _  -> exactly one character
-- =====================================================

-- Names starting with "A"
SELECT StudentName
FROM Students
WHERE StudentName LIKE 'A%';

-- Names ending with "a"
SELECT StudentName
FROM Students
WHERE StudentName LIKE '%a';

-- Names containing "an" anywhere
SELECT StudentName
FROM Students
WHERE StudentName LIKE '%an%';

-- Names exactly 5 characters long
SELECT StudentName
FROM Students
WHERE StudentName LIKE '_____';

-- Second character is "a" (e.g. Zara, Cara)
SELECT StudentName
FROM Students
WHERE StudentName LIKE '_a%';

-- NOT LIKE: exclude a pattern
SELECT StudentName
FROM Students
WHERE StudentName NOT LIKE 'A%';

-- Escaping a literal underscore in the pattern
SELECT *
FROM Users
WHERE Username LIKE '%\_%' ESCAPE '\';


-- =====================================================
-- 4. COMBINED EXAMPLE
-- =====================================================

-- Unique departments for students whose name starts with "S", sorted alphabetically
SELECT DISTINCT Department
FROM Students
WHERE StudentName LIKE 'S%'
ORDER BY Department ASC;


-- =====================================================
-- 5. PRACTICE QUERIES (fill in below)
-- =====================================================

-- 1) List all unique course names offered
-- SELECT ...

-- 2) List all students, sorted by last name asc, then first name asc
-- SELECT ...

-- 3) Find all students whose email ends in "@gmail.com"
-- SELECT ...

-- 4) Find all courses whose name contains the word "Data"
-- SELECT ...

-- 5) List unique cities of students NOT enrolled in "CS101", sorted alphabetically
-- SELECT ...
