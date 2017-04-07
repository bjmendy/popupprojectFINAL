-- psql -a -f migrations.sql

CREATE DATABASE popup;

\c popup

CREATE TABLE users (id SERIAL PRIMARY KEY, username varchar(255), password_digest varchar(255));
CREATE TABLE events (id SERIAL PRIMARY KEY, username varchar(255), user_id INT references users, title varchar(255), link varchar(255), description varchar(140), date varchar(140));
##foreign key is user_id!!!