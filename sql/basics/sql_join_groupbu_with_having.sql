SELECT make_name, COUNT(model.model_id)
FROM make
LEFT OUTER JOIN model ON make.make_id = model.make_id
GROUP BY make_name
HAVING COUNT(model.model_id) = 1;
