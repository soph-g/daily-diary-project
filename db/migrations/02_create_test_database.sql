CREATE DATABASE daily_diary_test;
\c daily_diary_test
CREATE TABLE diary_entries(id SERIAL PRIMARY KEY, title VARCHAR(40), body VARCHAR(500));
