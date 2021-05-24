CREATE TABLE newyork_housing (
	num_bedrooms INT,
	price NUMERIC,
	street_address TEXT,
	city TEXT
);

CREATE TABLE austin_housing (
	num_bedrooms INT,
	price NUMERIC,
	street_address TEXT,
	city TEXT
);

SELECT * FROM newyork_housing

SELECT num_bedrooms, AVG("price") AS "Average Housing Price" 
FROM newyork_housing 
GROUP BY num_bedrooms 
ORDER BY num_bedrooms

SELECT * FROM austin_housing

SELECT num_bedrooms, AVG("price") AS "Austin Average Price" 
FROM austin_housing 
GROUP BY num_bedrooms 
ORDER BY num_bedrooms
