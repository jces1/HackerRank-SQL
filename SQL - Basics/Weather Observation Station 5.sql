CREATE TABLE temp (
SELECT City,
       LENGTH(City) AS City_len
FROM STATION
GROUP BY 1,2
);

CREATE TABLE temp2 (
SELECT City,
        City_len,
        ROW_NUMBER() OVER (PARTITION BY City_len ORDER BY CITY ASC) AS Rank_number
FROM temp
WHERE City_len = (
SELECT MAX(City_len)
FROM temp)
OR City_len = (
SELECT MIN(City_len)
FROM temp));

SELECT City,
        City_len
FROM temp2
WHERE Rank_number =1
