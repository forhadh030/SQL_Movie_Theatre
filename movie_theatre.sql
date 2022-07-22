create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

create table tickets (
	ticket_id SERIAL primary key,
	movie_name VARCHAR(100),
	order_date DATE default CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	upc INTEGER
);

create table concession (
	item_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total numeric(8,2),
	total_cost numeric(10,2),
	upc INTEGER
);

create table movies (
	movies_id SERIAL primary key,
	title_movies VARCHAR(100),
	movie_time DATE default CURRENT_DATE,
	actors_name VARCHAR(100),
	foreign key(movies_id) references tickets(ticket_id)
);

create table payment (
	payment_id SERIAL primary key,
	customer_id integer,
	ticket_id integer,
	item_id integer,
	staff_id VARCHAR(15),
	foreign key(item_id) references concession(item_id)
);

