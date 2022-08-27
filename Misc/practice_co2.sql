
SELECT DISTINCT
    country, co2, consumption_co2
FROM
    global_warming.emission
ORDER BY consumption_co2 DESC;

SELECT 
    country, year, co2
FROM
    global_warming.emission;

SELECT DISTINCT
    country, population, COUNT(share_global_co2)
FROM
    global_warming.emission
GROUP BY country , population
ORDER BY COUNT(share_global_co2) DESC;

SELECT DISTINCT
    country
FROM
    global_warming.emission
ORDER BY country DESC;

SELECT 
    COUNT(DISTINCT iso_code)
FROM
    global_warming.emission;

SELECT COUNT(DISTINCT country)
FROM
    global_warming.emission
WHERE
    country NOT LIKE '%America%'
        AND country NOT LIKE '%income%'
        AND country NOT LIKE '%Europe%';

SELECT 
    country, year, co2
FROM
    global_warming.emission
WHERE
    year = 1960;

SELECT DISTINCT
    country, year, MAX(gas_co2) AS 'highest co2'
FROM
    global_warming.emission
GROUP BY country , year
HAVING year = 1960
ORDER BY MAX(gas_co2) DESC;

SELECT DISTINCT
    country,
    year,
    cumulative_co2,
    share_global_cumulative_co2,
    GDP
FROM
    global_warming.emission
WHERE
    year IN (1980 , 1990, 2000)
        AND country NOT LIKE '%world%'
        AND country NOT LIKE '%income%'
        AND country NOT LIKE '%america%'
        AND country NOT LIKE '%europe%'
        AND country NOT LIKE '%asia%'
ORDER BY cumulative_co2 DESC
LIMIT 20;

SELECT DISTINCT
    country, oil_co2, year
FROM
    global_warming.emission
WHERE
    country = 'United States'
ORDER BY year;

SELECT 
    country, year, consumption_co2, share_global_coal_co2
FROM
    global_warming.emission
ORDER BY consumption_co2 DESC;
  
	
   SELECT 
    country,
    MAX(consumption_co2),
    MAX(methane),
    MAX(coal_co2),
    MAX(share_global_co2)
FROM
    global_warming.emission
GROUP BY country
ORDER BY country;

SELECT DISTINCT country,
    primary_energy_consumption,
    year
FROM
	global_warming.emission
WHERE year > 1950
ORDER BY
	country DESC;
    
    country_co2country_co2
    
    CREATE VIEW country_co2 AS
    SELECT country, co2
    FROM 
    global_warming.emission;country_co2
    
    sys.emission
    
    

    