/*
Find the number of Yelp businesses that sell pizza.
*/
select count(*)
from yelp_business
where categories ILIke '%PIZZA%'