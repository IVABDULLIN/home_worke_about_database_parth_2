create table if not exists list_of_performers (
	id serial primary key, artists_alias varchar(100)
	not null unique);

create table if not exists list_of_artists_albums (
	id serial primary key, album_title varchar(100)
	not null unique, year_of_release interval year not null, 
	list_of_performers_id integer references list_of_performers(id));

create table if not exists track_list (
	id serial primary key, track_name varchar(100) 
	not null unique, track_duration time without time zone
	not null, list_of_artists_albums_id integer references
	list_of_artists_albums(id));



 



