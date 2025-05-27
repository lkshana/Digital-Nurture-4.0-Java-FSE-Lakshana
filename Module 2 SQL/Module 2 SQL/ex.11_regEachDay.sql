
use events_at_cognizant;

select u.user_id, u.full_name, u.email 
from Users u where u.registration_date >= CURDATE() - INTERVAL 6 DAY and u.registration_date <= CURDATE()
group by u.user_id having count(Distinct Date(u.registration_date)) = 7; -- Only selecting the records where the user registered for all the 7 days


-- OUTPUT:
-- (No output for the given data)