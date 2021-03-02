SELECT model_id, SUM(price)
FROM sale
GROUP BY model_id;
