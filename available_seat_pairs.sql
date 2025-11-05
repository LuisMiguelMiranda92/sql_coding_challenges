/*
A movie theater has two tables: theater_availability which tracks which seats are available, 
and theater_seatmap which defines the physical layout showing which seats are next to each other. 
Consecutive seat numbers do not always indicate adjacent seats.


Find all pairs of seats that are both adjacent to each other and available. 
Output distinct pairs, where the lower seat number is in the first column.
*/
select ts.seat_number,
        ts.seat_right
from theater_seatmap ts
join theater_availability ta on ta.seat_number = ts.seat_number
join theater_availability ta2 on ta2.seat_number = ts.seat_right
where ta.is_available = 1
        AND ta2.is_available = 1
        