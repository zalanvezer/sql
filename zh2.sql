
SELECT  TIPUS,
        HELY,
        ROUND(AVG(CSILLAGOK_SZAMA), 3)
FROM szallashely
WHERE TIPUS IS NOT NULL AND SZALLAS_NEV <> '-'
GROUP BY TIPUS, HELY

SELECT  SZOBA_FK,
        FOGLALAS_PK,
        LAG(DATEDIF(DAY,METTOL,MEDDIG)) OVER(PARTITION BY szoba_fk ORDER BY mettol)
FROM Foglalas
WHERE SZOBA_FK IS NOT NULL
ORDER BY SZOBA_FK


SELECT szh.SZALLAS_NEV, count(*) from 
Vendeg v LEFT JOIN Foglalas f ON v.USERNEV = f.UGYFEL_FK
    LEFT JOIN Szoba sz ON f.SZOBA_FK = sz.SZOBA_ID
    LEFT JOIN Szallashely szh ON sz.SZALLAS_FK = szh.SZALLAS_ID

group by szh.SZALLAS_NEV
having count(*) >= 126 



