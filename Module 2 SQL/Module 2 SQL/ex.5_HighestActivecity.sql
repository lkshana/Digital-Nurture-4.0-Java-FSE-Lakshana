
use events_at_cognizant;

select u.city, count(Distinct r.user_id) as no_of_users  -- Count the distinct user_ids in all records of Registration table
from Users u join Registrations r on u.user_id = r.user_id
group by u.city
order by no_of_users DESC 
limit 5;

-- OUTPUT:
-- city    no_of_users
-- Chennai 2
-- Hyderabad       2
-- Bengaluru       2
-- Visakhapatnam   1
-- Tiruchirappalli 1