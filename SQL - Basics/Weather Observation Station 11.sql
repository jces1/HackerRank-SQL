-- HackerRank has an incorrect answer for this which makes the solution harder than necessary

--Simple Solution
SELECT DISTINCT(CITY)
FROM STATION
WHERE NOT SUBSTRING(CITY,1,1) IN ('A','E','I','O','U')
AND NOT RIGHT(CITY,1) IN ('a','e','i','o','u')
GROUP BY 1;

--"Accepted" solution
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou]|[^aeiou]$';
