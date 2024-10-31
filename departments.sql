CREATE TABLE `fsbootcamp2024`.`departments` (
  `department_id` INT NOT NULL AUTO_INCREMENT,
  `department_name` VARCHAR(45) BINARY NULL,
  `status` TINYINT(1) NULL DEFAULT 1,
  PRIMARY KEY (`department_id`),
  UNIQUE INDEX `department_name_UNIQUE` (`department_name` ASC) VISIBLE);

INSERT INTO departments (department_name) VALUES(1, 'Admin', 1);

SELECT * FROM fsbootcamp2024.departments