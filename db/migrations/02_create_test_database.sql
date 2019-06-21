CREATE DATABASE daily_diary_test;
\c daily_diary_test
CREATE TABLE diary_entries(id SERIAL PRIMARY KEY, title VARCHAR(40), body VARCHAR(500));
INSERT INTO diary_entries (title, body) VALUES('Haircut', 'I got a snazzy haircut');
INSERT INTO diary_entries (title, body) VALUES('Cool bike ride', 'I popped a wheelie');
