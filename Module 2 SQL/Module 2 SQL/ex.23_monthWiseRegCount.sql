
use events_at_cognizant;

select DATE_FORMAT(r.registration_date, "%m-%Y") as month, count(*) as no_of_registrations --Finding the no.of registrations for each month, formatting the reg_date to be only show the month along the year
from Registrations r where r.registration_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
group by month order by month;

-- OUTPUT: 
-- (No registrations on other months so not in the output)
-- month   no_of_registrations
-- 04-2025 2
-- 05-2025 35
-- 06-2025 33
-- 07-2025 28
-- 08-2025 2
