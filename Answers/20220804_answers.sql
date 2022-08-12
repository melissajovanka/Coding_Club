#08/04/2022- Answer Sheet

#1. How would we query for just the country, year and co2?

SELECT 
    country, year, co2
FROM
    global_warming.emissions;

#1.2 Are there any other columns that might be interesting to query?   
#Example: maybe coal_co2?

SELECT 
    country, year, coal_co2
FROM
    global_warming.emissions;

#2.1 How would we query just the unique values in the country column?
#Hint: DISTINCT

SELECT DISTINCT
    country
FROM
    global_warming.emissions;
    
#2.2 How would we query just these unique values in the country column in reverse alphabetical order (Z → A)?

 SELECT DISTINCT
    country
FROM
    global_warming.emissions
ORDER BY country DESC;

#2.3  How many unique values are in the country column?
#Hint: COUNT

SELECT 
    COUNT(DISTINCT country)
FROM
    global_warming.emissions;

#3.1 Are there any other values in the country column that might not be countries?
#Hint:  'North America' is not necessarily a country
/*
'North America', 'South America', 'World'

There are probably more that we need to find! 
*/

#Extra: How could we query for other unique values that might be similar to 'North America'? 
#Hint: LIKE

SELECT DISTINCT
    country
FROM
    global_warming.emissions
WHERE
    country LIKE ('%america%');

#3.2 How can we exclude these 'other values' (found in 3.1) that are not countries from our current query?

#More efficient: 
SELECT DISTINCT
    country
FROM
    global_warming.emissions
WHERE
    country NOT IN ('North America' , 'South America', 'World');

#Less efficient:
SELECT DISTINCT
    country
FROM
    global_warming.emissions
WHERE
    country != 'North America'
        OR country != 'South America'
        OR country != 'World';
        
#Even less efficient:
SELECT DISTINCT
    country
FROM
    global_warming.emissions
WHERE
    country NOT LIKE 'North America'
        OR country NOT LIKE 'South America'
        OR country NOT LIKE 'World';

#Extra: how do we create a view with our findings? (I.e., create a view removing the 'other values' in the country column that are not countries)
#Hint: 
/*
Syntax:

CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
*/

CREATE VIEW vw_cleaned_emissions AS
    SELECT 
        *
    FROM
        global_warming.emissions
    WHERE
        country NOT IN ('North America' , 'South America', 'World');
#NOTE: if you get an error 'no database selected', click on the global_warming schema on the left until it is in bold. 

#4.1 How would we select country, year and co2 from the year 1960?

SELECT 
    country, year, co2
FROM
    global_warming.emissions
WHERE
    country NOT IN ('North America' , 'South America', 'World')
        AND year = 1960;
    
#4.2 How would we select the countries with the highest gas_co2 from country and gas_co2 columns from the year 1960?
#Sort by the highest → lowest

SELECT 
    country, co2
FROM
    global_warming.emissions
WHERE
    country NOT IN ('North America' , 'South America', 'World')
        AND year = 1960
ORDER BY co2 DESC;

#4.2. How would we restrict this to the top 5?

SELECT 
    country, co2
FROM
    global_warming.emissions
WHERE
    country NOT IN ('North America' , 'South America', 'World')
        AND year = 1960
ORDER BY co2 DESC
LIMIT 5;
