-- Finding Inactive users

use events_at_cognizant;

select u.user_id, u.full_name, u.email from Users u
left join Registrations r on u.user_id = r.user_id and r.registration_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH) -- Only joining with users that have registered in the last 3 months (90 days)
where r.registration_id is NULL; -- ANd also has no registrations


-- OUTPUT:
-- user_id full_name       email
-- 21      Srinivasn       srilog.ed@gmail.com
