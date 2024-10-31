-- what are data and databases
-- data is facts about an object or event
--  a database is a collection of related data

-- what are database managment systems (dbms)
--  a DBMS is a software that allows users to create, store, access, delete, update data in a databse
--  a DBMS has many different types such as: Hierarchical, network, relational, object-oriented and NoSQL

-- what is a relational database system (rdbms)
--  this is where we store data in tables. Each table has rows and cloumns like in EXEL

-- what is hierarchical DBMS?
-- data is stored in a tree like structure.

-- what is a network DBMS?
--  Data is storedin a graph like structure

--  what is a object oriented DBMS?
--  you store data in objects.

-- what is NoSQL?
-- this is where adata is stored in a non relational database. (instead of tables its like documents : key value pairs and grapghs, etc)
 
-- what is SQL?
-- its stands for structured query language
--  it is a lanuage used to communicate with a database for relational databases.

-- What makes up a sql statment?
-- a sql statement is made up of clauses, expressions, predicates, queries and statements.
-- queries are used to retrieve data from a database. They are made up clauses such as SELECT, FROM, WHERE, etc.
--  statments are used to perform actions on a database. they are made up of clauses such as CREATE, INSERT, UPDATE, DELETE, etc.
-- predicates are used to filter data. They are made up of clauses such as WHERE, HAVING, etc.

-- use a pecific database for following queries
-- data definition language(ddl)
USE my_app_db;

-- create a users table
CREATE TABLE users (
    id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT
);

-- altering users table
ALTER TABLE users  
ADD password VARCHAR(100);

-- modifying user table
ALTER TABLE users
MODIFY COLUMN name VARCHAR(200);

-- dropping users table
-- DROP TABLE users

-- remove all data records
-- TRUNICATE TABLE users;

-- INT - integer
-- tinyint - 0 or 1
-- varchar - variable length
-- char - fixed-length
-- float - a float
-- date - the date - yyyy-mm-dd
-- time - the time - HH:MM:SS
-- Dattime - the date and the time

-- data manipulation Language (dml)
INSERT INTO users (id, name, email, age, password)
VALUES (1, 'Andrew Paul-Price', 'andrew@gmail.com', 28, 'pass123');

INSERT INTO users (id, name, email, age, password)
VALUES (2, 'Andrew Paul-Price', 'andrew@gmail.com', 28, 'pass123'),
       (3, 'Andrew Paul-Price', 'andrew@gmail.com', 28, 'pass123');

-- selecting all data and columns from the users table
SELECT * FROM users;

SELECT id, name FROM users;

-- filtering data useing WHERE clause
SELECT * FROM users WHERE age > 25;

-- updating data in users table
SET SQL_SAFE_UPDATES = 0;
UPDATE users SET password = 'newpass123' WHERE id = 1;

DELETE FROM users WHERE id = 1;

-- a primary key is a unique identifer for each record
ALTER TABLE USERS
CHANGE COLUMN id id INT AUTO_INCREMENT PRIMARY KEY,
ADD PRIMARY KEY (id);
;

-- insert a record without specifying identifer
INSERT INTO users (name, email, age, password) VALUES ('Tom Jerry', 'email@email.com', 30, 'passpass');

-- a foriegn key is a cloumn in a table that is a promary key in another table

-- users have courses
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
    -- user_id INT,
    -- FOREIGN KEY (user_id) REFERENCES users(id) 
    -- ON DELETE CASCADE ON UPDATE CASCADE
);



-- what are cascading actions
-- when a record in a parent table is deleted or updated, the same action is performed on the child table
-- cascade, set null, no action, restrict

-- delete cascade records in courses table

CREATE TABLE UserCourse (
    user_id INT,
    course_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) 
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) 
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- inserting data into courses
INSERT INTO courses (name)
VALUES ('Science'),
       ('History');

-- inserting data into UserCourse table
INSERT INTO UserCourse (user_id, course_id)
VALUES (1, 1);

SELECT * FROM users
JOIN UserCourse ON users.id = UserCourse.user_id
JOIN courses ON courses.id = UserCourse.course_id
where user.id = 1;

ORDER BY courses.name DESC;