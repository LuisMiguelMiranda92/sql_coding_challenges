/*
Find wineries producing wines with aromas of plum, cherry, rose, or hazelnut (singular form only). 
To make things simpler, exclude any wine descriptions that contain the plural forms (ex. cherries).
*/
SELECT DISTINCT winery 
FROM winemag_p1
WHERE 
    -- Check for singular forms
    (LOWER(description) LIKE '% plum %' OR 
     LOWER(description) LIKE '% cherry %' OR 
     LOWER(description) LIKE '% rose %' OR 
     LOWER(description) LIKE '% hazelnut %')
AND 
    -- Exclude plural forms
    (LOWER(description) NOT LIKE '% plums %' AND 
     LOWER(description) NOT LIKE '% cherries %' AND 
     LOWER(description) NOT LIKE '% roses %' AND 
     LOWER(description) NOT LIKE '% hazelnuts %');