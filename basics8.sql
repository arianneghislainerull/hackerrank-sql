/*
no duplicates => distinct
even number => mode(id, 2)=0
*/

SELECT DISTINCT CITY FROM STATION WHERE MOD(ID, 2) = 0;
