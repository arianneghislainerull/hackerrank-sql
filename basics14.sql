/*
Enter your query here.
*/
SELECT DISTINCT(CITY) FROM STATION 
WHERE SUBSTR(CITY, 1, 1) NOT IN ('A', 'E', 'I', 'O', 'U');
