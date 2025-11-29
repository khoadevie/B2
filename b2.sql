CREATE DATABASE UniversityDB;

\c UniversityDB

CREATE SCHEMA university;

CREATE TABLE Students
(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50)  NOT NULL,
    last_name  VARCHAR(50)  NOT NULL,
    birth_date DATE,
    email      VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Courses
(
    course_id   SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits     INT
);

CREATE TABLE Enrollments
(
    enrollment_id SERIAL PRIMARY KEY,
    student_id    INT REFERENCES university.Students (student_id),
    course_id     INT REFERENCES university.Courses (course_id),
    enroll_date   DATE
);


SELECT datname
FROM pg_database;

SELECT schema_name
FROM information_schema.schemata;

SELECT *
FROM Students

SELECT *
FROM Courses

SELECT *
FROM Enrollments
