-- Used alter table to add city, and state
alter table customer 
add city VARCHAR(50);

-- Customer information
insert into customer(first_name, last_name, address, city, state, billing_info)
values('Michael', 'Myer', '1000 Mission Street', 'South Pasadena', 'California', '1211 2122 1211 2122')

insert into customer(first_name, last_name, address, city, state, billing_info)
values('Freddy', 'Krueger', '1428 Elm Street', 'Springwood', 'Ohio', '5456 6465 5456 6465')

insert into customer(first_name, last_name, address, city, state, billing_info)
values('Jason', 'Voorhees', 'Near Camp', 'Crystal Lake', 'New Jersey', '1010 0101 1010 0101')

insert into customer(first_name, last_name, address, city, state, billing_info)
values('John', 'Kramer', '11235 Blake Drive', 'Brookly', 'NY', '0777 0707 7770 7070')

insert into customer(first_name, last_name, address, city, state, billing_info)
values('Thomas', 'Hewitt', '1010 King Ct', 'Kingsland', 'Texas', '2019 2020 2021 2022')


-- ticket information
select * from tickets;

insert into tickets(movie_name, order_date, sub_total, total_cost)
values('Friday the 13th', NOW()::timestamp, '13.99', '14.50')

insert into tickets(movie_name, order_date, sub_total, total_cost)
values('A nightmare on Elm Street', NOW()::timestamp, '13.99', '14.50')

insert into tickets(movie_name, order_date, sub_total, total_cost)
values('Halloween', NOW()::timestamp, '13.99', '14.50')

insert into tickets(movie_name, order_date, sub_total, total_cost)
values('Saw I-IV Marathon', NOW()::timestamp, '29.99', '33.21')

insert into tickets(movie_name, order_date, sub_total, total_cost)
values('Texas Chainsaw Massacre', NOW()::timestamp, '12.99', '13.50')

-- movies information
select * from movies;
alter table movies drop movie_time;
alter table movies add column movie_time time after title_movies; -- This does not work PostgreSQL but works on MySQL

insert into movies(movies_id, title_movies, actors_name, movie_time)
values('1', 'Friday the 13th', 'Kane Hodder', '9:00 PM')

insert into movies(movies_id, title_movies, actors_name, movie_time)
values('2', 'A nightmare on Elm Street', 'Robert Englund', '8:00 PM')

insert into movies(movies_id, title_movies, actors_name, movie_time)
values('3', 'Halloween', 'James Jude Courtney', '11:00 PM')

insert into movies(movies_id, title_movies, actors_name, movie_time)
values('4', 'Saw I-IV Marathon', 'Tobin Bell', '10:00 PM')

insert into movies(movies_id, title_movies, actors_name, movie_time)
values('5', 'Texas Chainsaw Massacre', 'Mark Burnham', '12:00 AM')

-- concession information
select * from concession;
alter table concession add column item_type VARCHAR(100);

insert into concession(order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 5.99, 6.37, 'popcorn')

insert into concession(order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 8.50, 9.78, 'popcorn combo')

insert into concession(order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 3.99, 4.28, 'M&M')

insert into concession(order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 6.50, 7.17, 'Nachos')

insert into concession(order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 9.99, 11.02, '#1 special')