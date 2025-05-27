use events_at_cognizant;

select s.event_id, e.title, e.description, Count(*) as no_of_sessions  
from Sessions s join Events e on s.event_id = e.event_id
where TIME(s.start_time) >= "10:00:00" and TIME(s.end_time) <= "12:00:00" -- ensuring the start time is after 10 and end time is before 12
group by s.event_id
order by no_of_sessions DESC; -- Arrange in desecnding orer by no_of_sessions

-- OUTPUT:
-- event_id        title   description     no_of_sessions
-- 3       Frontend Dev Bootcamp   Hands-on training on frontend tech.     2   
-- 1       Tech Innovators Meetup  A meetup for tech enthusiasts.  1
-- 8       Blockchain Meetup       Blockchain beyond crypto.       1
-- 10      Mobile Dev Con  Mobile app trends and frameworks.       1
-- 12      IoT Innovations Connecting devices at scale.    1
-- 13      QA & Testing Bootcamp   Automated testing techniques.   1