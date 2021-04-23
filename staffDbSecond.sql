create table if not exists Staff (
	id serial primary key,
	chiefId integer,
	name varchar(200) not null,
	department varchar(200) not null,
	foreign key (chiefId) references Staff(id)
);