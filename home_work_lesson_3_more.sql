create table if not exists Departament (
	id serial primary key,
	name varchar(40) not null
);

create table if not exists Emploee (
	id serial primary key,
	name varchar(40) not null,
	departament integer references Departament(id),
	cheif integer references Emploee(id)
);