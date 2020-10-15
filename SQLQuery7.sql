SELECT Top 1 Специальность
   
FROM
    Заявление
	GROUP BY Специальность ORDER BY COUNT(*) DESC;