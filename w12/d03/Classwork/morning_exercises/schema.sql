CREATE DATABASE comedians;

\c comedians

CREATE TABLE active_comedians(
id serial primary key,
joke varchar(255)
);

CREATE TABLE really_active_comedians(
id serial primary key,
joke varchar(255)
);
