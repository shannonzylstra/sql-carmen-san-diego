\connect world;

-- CLUE #1

-- SELECT country, population FROM country WHERE region = 'Southern Europe' ORDER BY population ASC LIMIT 1;
-- SELECT country, population FROM country WHERE region = 'Southern Europe' ORDER BY population DESC LIMIT 1;
-- SELECT countrycode FROM country WHERE region = 'Southern Europe' ORDER BY population ASC LIMIT 1;

-- CLUE #2

-- SELECT * FROM countrylanguage WHERE countrycode = 'VAT' LIMIT 2;

-- CLUE #3 find out where they ONLY speak italian
-- SELECT countrycode FROM countrylanguage WHERE language = 'Italian' AND percentage = 100;

-- CLUE #4 find the city in San Marino not named San Marino
SELECT name FROM city WHERE countrycode = 'SMR' AND name != 'San Marino';

-- CLUE #5 a) find city in South America with similar name to 'Serravalle'
SELECT countrycode FROM city WHERE name LIKE 'Serra%' AND countrycode != 'SMR';
