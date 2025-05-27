use events_at_cognizant;


select e.title, first.event_id, first.session_id as ses_1, second.session_id as ses_2

from Sessions first 
join Events e on first.event_id = e.event_id
 join Sessions second 
on
 first.event_id = second.event_id and  -- To check whether both the sessions are from same event
 first.session_id < second.session_id and -- Checks whether the first session is before the second session 
 first.start_time < second.end_time and  -- Checks that the start time of the first session is before the end time of the second session
 first.end_time > second.start_time; -- Checks that the end time of the first session is after the start time of the second


-- output:
-- title   event_id        ses_1   ses_2
-- Tech Innovators Meetup  1       2       3