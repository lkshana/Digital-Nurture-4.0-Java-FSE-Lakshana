

use events_at_cognizant;

select u.full_name, u.user_id, u.email,
r.event_id , COUNT(*) as no_of_registrations 
from Users u join Registrations r on u.user_id = r.user_id
group by u.user_id, r.event_id having no_of_registrations > 1; -- Grouping registrations for same event and finding duplicates if the group has more than one record


-- OUTPUT:
-- full_name       user_id email   event_id        no_of_registrations
-- Meena Venkatesh 18      meena@example.com       4       2