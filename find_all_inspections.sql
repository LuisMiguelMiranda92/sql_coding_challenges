#Find all inspections which are part of an inactive program.

select * 
from los_angeles_restaurant_health_inspections
where program_status = 'INACTIVE'