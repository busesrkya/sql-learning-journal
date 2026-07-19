-- Database schema for this learning journal.
-- Run this file first to create the tables used by every other example.

CREATE TABLE courses
(
    course_id   TINYINT PRIMARY KEY,
    course_name VARCHAR(20),
    capacity    SMALLINT
);

CREATE TABLE students
(
    student_id SMALLINT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name  VARCHAR(30),
    city       VARCHAR(30),
    club       VARCHAR(30),
    gender     CHAR(1)
);

CREATE TABLE grades
(
    grade_id   SMALLINT PRIMARY KEY,
    student_id SMALLINT REFERENCES students(student_id),
    course_id  TINYINT REFERENCES courses(course_id),
    exam1      TINYINT,
    exam2      TINYINT,
    exam3      TINYINT,
    average    DECIMAL(5,2),
    status     BIT
);
