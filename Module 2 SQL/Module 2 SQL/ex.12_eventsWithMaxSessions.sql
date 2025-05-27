
use events_at_cognizant;

select e.event_id, e.title, Count(s.session_id) as no_of_sessions 
from Events e left join Sessions s on e.event_id = s.event_id
group by e.event_id 
having  no_of_sessions = (
    -- Finding the session with the maximum duration
    Select max(count) from ( 
        Select count(*) as count from Sessions group by event_id  -- Finding the no. of sessions per event
    ) as count
);



-- OUTPUT:
-- event_id        title   no_of_sessions
-- 15      Container Orchestration 5