SELECT sale_date, DAYOFMONTH(sale_date), DATEDIFF(sale_date, NOW())
FROM sale;
