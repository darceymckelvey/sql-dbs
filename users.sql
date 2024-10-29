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
USE my_app_db;

-- create a users table
CREATE TABLE users (
    id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT
);