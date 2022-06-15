create table if not exists Genre(
	id serial primary key,
	namegenre varchar(100) unique not null
);

create table if not exists Executor(
	id serial primary key,
	executor varchar(100) unique not null
);

create table if not exists GenreExecutor(
	genre integer not null references Genre(id),
	executor integer not null references Executor(id),
	constraint ge primary key (genre, executor)
);

create table if not exists Collections(
	id serial primary key,
	namecollections varchar(100) unique not null,
	releasedata timestamp
);

create table if not exists Album(
	id serial primary key,
	namealbum varchar(100) not null,
	releasedata timestamp
);

create table if not exists Track(
	id serial primary key,
	album integer not null references Album(id),
	durationsong time not null,
	namesong varchar(150) not null
);


create table if not exists ExecutorAlbum(
	album integer not null references Album(id),
	executor integer not null references Executor(id),
	constraint ea primary key (album, executor)
);

create table if not exists TrackCollection(
	collection integer not null references Collections(id),
	track integer not null references Track(id),
	constraint tc primary key (collection, track)
);
