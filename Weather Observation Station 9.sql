-- Problem Statement - Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

-- Solution Query - 
  select distinct CITY from STATION where lower(CITY) not regexp '^[AEIOU]';


-- If you want to check for vowels that appear anywhere in the city name (not just at the beginning), or if you want to check for vowels at the end of the city name, you can still use REGEXP. Here’s how to adjust your SQL queries accordingly:

-- 1. Check for Vowels Anywhere in the City Name
-- To check if the city name contains any vowel (A, E, I, O, U) anywhere in the string, you can use:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[AEIOU]';


-- Check for Vowels at the End of the City Name
-- To check if the city name ends with a vowel, you can modify the regular expression like this:


SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[AEIOU]$';

-- Breakdown of the Regular Expressions
-- [AEIOU]: This part matches any single character that is either A, E, I, O, or U.
-- $: This symbol asserts the position at the end of the string. So, when you use [AEIOU]$, it checks if the last character of the string is a vowel.
-- Examples
-- For Any Vowel Anywhere:

-- It will match cities like "Atlanta", "Chicago", and "Boston" because they contain vowels.
-- For Vowels at the End:

-- It will match cities like "Seattle" or "Ohio" because they end with a vowel.
