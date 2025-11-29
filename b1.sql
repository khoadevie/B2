CREATE DATABASE LibraryDB;
\c LibraryDB

CREATE SCHEMA library;

CREATE TABLE Books
(
    book_id        SERIAL PRIMARY KEY,
    title          VARCHAR(100) NOT NULL,
    author         VARCHAR(50)  NOT NULL,
    published_year INT,
    price          NUMERIC
);


SELECT datname
FROM pg_database;


SELECT schema_name
FROM information_schema.schemata;


SELECT *
FROM Books;
