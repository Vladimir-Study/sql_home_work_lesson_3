create table if not exists Album (
	id serial primary key,
	name varchar(40) not null,
	date_create date not null
);

create table if not exists Track (
	id serial primary key,
	name varchar(40) not null,
	time float not null,
	album integer not null references Album(id)
);

create table if not exists Artist (
	id serial primary key,
	name varchar(40) not null
);

create table if not exists Jenre (
	id serial primary key,
	name varchar(40) not null
);

create table if not exists ArtistJenre (
	artist integer references Artist(id),
	jenre integer references Jenre(id),
	constraint aj_pk primary key (artist, jenre)
);

create table if not exists AlbumArtist (
	album integer references Album(id),
	artist integer references Artist(id),
	constraint aa_pk primary key (album, artist)
);

create table if not exists Compilation (
	id serial primary key,
	name varchar(40) not null,
	date_create date not null
);

create table if not exists TrackCompilation (
	track integer references Track(id),
	compilation integer references Compilation(id),
	constraint tc_pk primary key (track, compilation)
);