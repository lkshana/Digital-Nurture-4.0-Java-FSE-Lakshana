use events_at_cognizant;

select e.event_id, e.title, e.description, COUNT(r.registration_id) as no_of_regitratoins 
from Events e join Registrations r on e.event_id = r.event_id
left join Feedback f on e.event_id = f.event_id
where f.feedback_id is null --No feedbacks
group by e.event_id
having count(r.registration_id) > 0; -- WIth more than 0 .. i.e. with Registrations

-- OUTPUT
-- event_id        title   description     no_of_regitratoins
-- 14      UI/UX Design Workshop   Design thinking for web/mobile. 5