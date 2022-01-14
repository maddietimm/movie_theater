create table customers (
	billing_info numeric(8,2) primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);
create table movies (
	movie_name VARCHAR(150) primary key,
	movie_length INTEGER,
	movie_time TIME default current_time
);
create table tickets (
	amount NUMERIC(8,2),
	movie_name VARCHAR(150),
	billing_info INTEGER,
	foreign key(movie_name) references movies(movie_name),
	foreign key(billing_info) references customers(billing_info)
);
create table concessions (
	snack_type VARCHAR(150),
	drink_type VARCHAR(150),
	billing_info INTEGER,
	amount INTEGER,
	foreign key(billing_info) references customers(billing_info),
	foreign key (amount) references customers(billing_info)
);