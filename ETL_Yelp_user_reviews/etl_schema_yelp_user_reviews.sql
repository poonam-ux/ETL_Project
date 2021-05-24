CREATE TABLE yelp_users (
    user_id TEXT PRIMARY KEY,
    user_name TEXT,
    yelping_since DATE,
    review_count INT,
    average_stars INT
);

SELECT * FROM yelp_users

SELECT user_name, SUM(review_count) AS "Review_Count" 
FROM yelp_users 
GROUP BY user_name, review_count 
ORDER BY review_count DESC

SELECT user_id, user_name, yelping_since 
FROM yelp_users 
GROUP BY user_id, user_name, yelping_since 
ORDER BY yelping_since
