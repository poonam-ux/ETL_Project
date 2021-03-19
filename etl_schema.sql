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

CREATE TABLE yelp_users (
    user_id TEXT PRIMARY KEY,
    user_name TEXT,
    yelping_since DATE,
    review_count INT,
    average_stars INT
);

SELECT * FROM newyork_housing
SELECT * FROM austin_housing
SELECT * FROM yelp_users
