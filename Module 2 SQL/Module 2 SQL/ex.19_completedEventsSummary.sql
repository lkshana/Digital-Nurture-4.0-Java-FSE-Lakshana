use events_at_cognizant;

select e.event_id, e.title, e.description, Count(r.registration_id), AVG(f.rating) -- Finding the no.of registrations and the average of ratings for each event
from Events e 
left join Registrations r on e.event_id = r.event_id
left join Feedback f on e.event_id = f.event_id
where e.status = "completed" group by e.event_id; -- ONLy filters the events which are completed

-- OUTPUT:
-- event_id        title   description     Count(r.registration_id)      AVG(f.rating)
-- 2       AI & ML Conference      Conference on AI and ML advancements. 40       4.6000
-- 5       Cybersecurity Workshop  Securing modern web apps.       21    3.3333
-- 9       VR/AR Conference        Immersive tech sessions.        28    4.0000
-- 13      QA & Testing Bootcamp   Automated testing techniques.   20    3.5000
