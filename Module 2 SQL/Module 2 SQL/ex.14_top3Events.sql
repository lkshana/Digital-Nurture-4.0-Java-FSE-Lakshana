use events_at_cognizant;

select e.event_id, e.title, e.description, COUNT(r.registration_id) as no_of_registrations
from Events e join Registrations r on e.event_id = r.event_id
group by e.event_id order by no_of_registrations DESC limit 3; -- Arrange by no of registrations and limit the top 3 records
 

-- output:

-- event_id        title   description     no_of_registrations
-- 1       Tech Innovators Meetup  A meetup for tech enthusiasts.  9
-- 2       AI & ML Conference      Conference on AI and ML advancements.   8
-- 11      Big Data Analytics      Processing big datasets.        7