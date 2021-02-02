SELECT country_name AS `País`,
CASE
WHEN region_id = 1 THEN 'incluído'
ELSE 'não incluído'
END AS `Status Inclusão`
FROM hr.countries
ORDER BY country_name;

-- FORMATO 2
-- SELECT country_name AS `País`,
-- IF(region_id = 1, 'incluido', 'não incluido')
-- AS `Status Inclusão`
-- FROM hr.countries
-- ORDER BY country_name ASC
