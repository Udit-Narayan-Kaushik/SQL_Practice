-- Problem Statement - Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

-- Query Solution - 

select distinct CITY
from STATION 
where lower(substring(CITY, 1,1)) in ('a' , 'e', 'i', 'o', 'u') and
lower(substring(CITY, length(CITY),1)) in ('a', 'e', 'i', 'o', 'u');


-- Explaination - 

-- LOWER(SUBSTRING(CITY, 1, 1)) extracts the first character of the city name and converts it to lowercase to match against vowels.
-- LOWER(SUBSTRING(CITY, LENGTH(CITY), 1)) extracts the last character of the city name and checks it against vowels.
-- DISTINCT ensures that the results contain unique city names without duplicates.
-- This query will return city names starting and ending with a vowel, with no duplicate entries.
