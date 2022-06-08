create table if not exists Department (
	id SERIAL primary key,
	department_name varchar(40)
);

create table if not exists Employees(
	id serial primary key,
	department integer not null references Department(id),
	NameEmployees varchar(70)
);


create table if not exists Boss (
	id serial primary key,
	boss integer not null references Employees(id)
);
