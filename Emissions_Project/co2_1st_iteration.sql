#1: CO2 Emissions Per Year in the World

SELECT DISTINCT
    year, SUM(co2) AS total_co2_emissions
FROM
    global_warming.emissions
WHERE
    country NOT IN ('North America' , 'South America',
        'World',
        'Europe',
        'Africa',
        'Asia',
        'Oceania')
GROUP BY year
ORDER BY year;

#2: CO2 Emissions Per Year Per Continent:
SELECT DISTINCT
    year, country, co2
FROM
    global_warming.emissions
WHERE
    country IN ('North America' , 'South America',
        'Europe',
        'Africa',
        'Asia',
        'Oceania');
    
#3: Total CO2 Emissions Per Continent:
SELECT DISTINCT
    country, SUM(co2) AS total_co2_emissions
FROM
    global_warming.emissions
WHERE
    country IN ('North America' , 'South America',
        'Europe',
        'Africa',
        'Asia',
        'Oceania')
GROUP BY country;

#4: Total CO2 Emissions Per Country:

SELECT 
    country, SUM(co2)
FROM
    global_warming.emissions
WHERE
    country NOT IN ('North America' , 'South America',
        'World',
        'Europe',
        'Africa',
        'Asia',
        'Oceania')
GROUP BY country
ORDER BY country;