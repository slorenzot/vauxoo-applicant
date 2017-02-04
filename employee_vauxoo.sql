-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
	id integer not null,
	first_name character varying(30),
	last_name character varying(30),
	department_id integer,
	CONSTRAINT pk_employee PRIMARY KEY(id)
	
);

CREATE TABLE employee_department (
	id integer not null,
	name character varying(30),
	description character varying(90),
	CONSTRAINT pk_employee_department PRIMARY KEY(id)
);

ALTER TABLE only employee add CONSTRAINT fk_employee_department_id FOREIGN KEY(department_id) REFERENCES public.employee_department(id);




-- load some initial data
-- departments
insert into employee_department(id, name, description) values(1000, 'administracion', 'administracion');
insert into employee_department(id, name, description) values(1100, 'administracion', 'compras');
insert into employee_department(id, name, description) values(1200, 'administracion', 'contabilidad');
insert into employee_department(id, name, description) values(1300, 'administracion', 'nomina');
insert into employee_department(id, name, description) values(2100, 'recursos humanos', 'captacion');
insert into employee_department(id, name, description) values(2200, 'recursos humanos', 'contabilidad');


-- employees
insert into employee(id, first_name, last_name, department_id) values(10001, 'pedro' , 'mata', 1000);
insert into employee(id, first_name, last_name, department_id) values(10002, 'jose' , 'guerra', 1100);
insert into employee(id, first_name, last_name, department_id) values(10003, 'maria' , 'masa', 1200);
insert into employee(id, first_name, last_name, department_id) values(10004, 'julio' , 'lopez', 2200);


-- ...
