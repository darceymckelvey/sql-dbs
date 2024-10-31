-- to create a database
CREATE database fsbootcamp2024;

-- to select a paricular database to be used currently for data being used 
use fsbootcamp2024;

CREATE TABLE fsbootcamp2024.employees (
	employee_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NULL,
	STATUS TINYINT(1) DEFAULT 1    
);

-- selecting particular data
select employee_id, first_name from fsbootcamp2024.employees;

-- select everything 
select * from fsbootcamp2024.employees;

-- insert queries to insert data into our database
INSERT INTO fsbootcamp2024.employees VALUES (1, 'Darcey', 'Mckelvey', 1);

-- specific columns 
INSERT INTO fsbootcamp2024.employees(employee_id, first_name, last_name) VALUES (2, 'Test', 'User');
INSERT INTO fsbootcamp2024.employees(employee_id, first_name) VALUES (4, 'Darcey');

--  add primary key, auto increment, multi insert, updat query, delete query
INSERT INTO fsbootcamp2024.employees(employee_id, first_name) 
VALUES (5, 'Mihir'), (6, 'Deepika'), (7, 'Farzaneh'), (8, 'Andrew'), (9, 'Judith');

SELECT first_name, last_name from fsbootcamp2024.employees;

-- ordering by clause
SELECT * FROM employees
ORDER BY employee_id DESC; -- in desending by id clause

SELECT * FROM employees
ORDER BY first_name ASC; -- in ascending by first_name clause

-- filteration of data
SELECT * 
FROM employees
WHERE first_name = 'Farzaneh';

SELECT *
FROM employees
WHERE first_name LIKE "F%";
-- anything containing an a 
SELECT *
FROM employees
WHERE first_name LIKE "%a%";

SELECT *
FROM employees
WHERE last_name IS NULL;

SELECT *  
FROM employees
WHERE last_name IS NULL AND employee_id > 6;
 
 
 -- updating data 

UPDATE employees
SET first_name = "Harry", last_name = 'Gurm', status = 0
where employee_id = 4;

UPDATE employees
SET first_name = "Darcey", last_name = 'updated', status = 0
where employee_id = 5;

select * from employees;

DELETE FROM employees WHERE employee_id = 1;
DELETE FROM employees WHERE status = 0;










