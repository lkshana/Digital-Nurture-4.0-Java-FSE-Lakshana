use events_at_cognizant;

select e.event_id, e.title, e.description from Events e 
left join Resources r on r.event_id = e.event_id 
where r.resource_id is NULL; -- Only filters records with no resources


-- OUTPUT:
-- event_id        title   description
-- 14      UI/UX Design Workshop   Design thinking for web/mobile.    