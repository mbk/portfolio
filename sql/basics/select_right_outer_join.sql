SELECT make.make_id, make_name, model_name
FROM make
RIGHT OUTER JOIN model ON make.make_id = model.make_id;
