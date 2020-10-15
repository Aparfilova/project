SELECT  Город
   
FROM
    Абитуриент
	GROUP BY Город ORDER BY COUNT(*) DESC;