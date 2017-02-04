-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
	id integer not null,
	first_name character varying(30),
	last_name character varying(30),
	department_id integer,
	boss_id integer,
	CONSTRAINT pk_employee PRIMARY KEY(id)
	
);

CREATE TABLE employee_department (
	id integer not null,
	name character varying(30),
	description character varying(90),
	CONSTRAINT pk_employee_department PRIMARY KEY(id)
);


CREATE TABLE employee_hobby (
	id integer not null,
	name character varying(30),
	description character varying(90),
	CONSTRAINT pk_employee_hobby PRIMARY KEY(id)
);

CREATE TABLE employee_has_hobby (
	employee_id integer not null,
	employee_hobby_id integer not null,
	CONSTRAINT pk_employee_has_hobby PRIMARY KEY(employee_id, employee_hobby_id)
);

-- employee foreign key
ALTER TABLE only employee add CONSTRAINT fk_employee_department_id FOREIGN KEY(department_id) REFERENCES public.employee_department(id);
ALTER TABLE only employee add CONSTRAINT fk_employee_boss_id FOREIGN KEY(employee_id) REFERENCES public.employee(id);

-- employee_hobby foreign keys
ALTER TABLE only employee_has_hobby add CONSTRAINT fk_employee_has_hobby_employee_id FOREIGN KEY(employee_id) REFERENCES public.employee(id);
ALTER TABLE only employee_has_hobby add CONSTRAINT fk_employee_has_hobby_hobby_id FOREIGN KEY(employee_hobby_id) REFERENCES public.employee_hobby(id);


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

-- hobbies
insert into employee_hobby(id, "name", description) values(1, 'video juegos' , 'video juegos');
insert into employee_hobby(id, "name", description) values(2, 'musica' , 'escuchar musica e ir a conciertos');
insert into employee_hobby(id, "name", description) values(3, 'peliculas' , 'ver peliculas e ir al cine');

-- hobbies by employess
insert into employee_has_hobby values(10001, 1);
insert into employee_has_hobby values(10001, 3);
insert into employee_has_hobby values(10002, 2);
insert into employee_has_hobby values(10002, 3);
insert into employee_has_hobby values(10003, 1);
insert into employee_has_hobby values(10003, 2);
insert into employee_has_hobby values(10003, 3);
insert into employee_has_hobby values(10004, 2);
insert into employee_has_hobby values(10004, 1);

-- ...
