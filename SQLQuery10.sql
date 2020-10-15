SELECT  Специальность
   
FROM
    Заявление
	GROUP BY Приоритет, Специальность ORDER BY COUNT(*) DESC;
