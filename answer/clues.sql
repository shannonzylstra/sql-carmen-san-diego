\connect world;

-- CLUE #1 ANSWER

SELECT code FROM country WHERE region = 'Southern Europe' ORDER BY population ASC LIMIT 1;

-- CLUE #2 ANSWER


SELECT language FROM countrylanguage WHERE countrycode = 'VAT' AND isofficial = 't';

-- CLUE #3 ANSWER

SELECT countrycode FROM countrylanguage WHERE language = 'Italian' AND percentage = 100;

-- CLUE #4 find the city in San Merino not named San Merino lol

SELECT name FROM city WHERE countrycode = 'SMR' AND name != 'San Marino';

-- CLUE #5 find city in South America (region) that is similar / starts similarly to 'Serravalle' and find its country too

SELECT countrycode FROM city WHERE name LIKE 'Serra%' AND countrycode != 'SMR';

-- CLUE #6 find capitol of Brazil!
SELECT capital FROM country WHERE code = 'BRA';
SELECT name FROM city WHERE id = 211; 

-- CLUE #7 find the city with the population of 91,084
SELECT name FROM city WHERE population = 91084;
