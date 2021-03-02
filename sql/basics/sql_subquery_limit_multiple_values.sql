SELECT make_name, country
FROM make
WHERE country IN (
  SELECT country_name
  FROM europe_countries)
);
