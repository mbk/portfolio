SELECT model_name, model_year
FROM model
WHERE model_year = (
  SELECT MAX(model_year)
  FROM model
);
