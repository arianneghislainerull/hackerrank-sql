Select Doctor, Professor, Singer, Actor from (
 SELECT  name, 
               occupation,
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS row_number
      FROM OCCUPATIONS
)dt
PIVOT (
    MAX(name)
    FOR [Occupation] IN ([Doctor],  [Professor],
                       [Singer],  [Actor])
)pt
ORDER BY row_number;
