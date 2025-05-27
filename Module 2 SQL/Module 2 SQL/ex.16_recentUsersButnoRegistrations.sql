use events_at_cognizant;

select u.user_id, u.full_name, u.email, u.registration_date
from Users u left join Registrations r on u.user_id = r.user_id
where r.registration_id is NULL and  
u.registration_date >= CURDATE() - INTERVAL 30 DAY; -- To find the users who registered in the last 30 days

-- Output:
-- user_id full_name       registration_date
-- 21      Srinivasn       2025-05-24
