#08/04/2022- Questions

#1. How would we query for just the country, year and co2?

#1.2 Are there any other columns that might be interesting to query?

#2.1 How would we query just the unique values in the country column?
#Hint: DISTINCT
    
#2.2 How would we query just these unique values in the country column in reverse alphabetical order (Z → A)?

#2.3  How many unique values are in the country column?
#Hint: COUNT

#3.1 Are there any other values in the country column that might not be countries?
#Hint:  'North America' is not necessarily a country

#Extra: How could we query for other unique values that might be similar to 'North America'? 
#Hint: LIKE

#3.2 How can we exclude these 'other values' (found in 3.1) that are not countries from our current query?

#Extra: how do we create a view with our findings? (I.e., create a view removing the 'other values' in the country column that are not countries)
#Hint: 
/*
Syntax:

CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
*/

#4.1 How would we select country, year and co2 from the year 1960?
    
#4.2 How would we select the countries with the highest gas_co2 from country and gas_co2 columns from the year 1960?
#Sort by the highest → lowest

#4.2. How would we restrict this to the top 5?
