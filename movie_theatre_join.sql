-- Testing the joins for practice

select * from tickets;
select * from movies;

-- Unsure why this isn't generating the list; will have to come back to it
select movie_name, order_date, actors_name, movie_time
from tickets
inner join movies
on tickets.ticket_id = movies.ticket_id;