create table if not exists Department (
	id serial primary key,
	name varchar(200) not null unique
);

create table if not exists Employee (
	id serial primary key,
	name varchar(200) not null,
	department_id integer references Department(id) not null,
	isChief boolean not null
);

create table if not exists ChiefDepartment (
	employee_id integer references Employee(id),
	department_id integer references Department(id),
	constraint chiefdepartment_pk primary key (employee_id, department_id)
);