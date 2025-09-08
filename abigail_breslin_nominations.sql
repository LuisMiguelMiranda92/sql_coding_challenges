#Count the number of movies for which Abigail Breslin was nominated for an Oscar.

select count(*) 
from oscar_nominees
where nominee = 'Abigail Breslin'
