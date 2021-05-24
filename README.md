# ETL Project

This project is designed to conduct extraction, transformations, and loading of two sets of data, namely housing data, and Yelp review data.

The purpose of this project was to migrate the data to a production database. The project stores, transforms, and loads both the datasets successfully into the database.

This project includes two parts:

1. ETL on housing data of 2 US cities, New York and Austin to answer some of the questions such as- 
    * which city has higher housing price for given number of bedrooms
    * which city has more number of listings
    * the mean and median housing prices in both cities
    * the maximum and minimum house price for similar homes in these 2 cities, etc.

2. ETL on 2 million+ Yelp user reviews to answer some of the questions such as - 
    * who are the top 20 users based on the review count
    * who are the first 50 Yelp users, etc.



This project includes three parts:

## 1. Data Extraction (Finding Data) 

The database is built on by combining desired data from three main data sources. 
These include -

* CSV formats of New York housing dataset and Austin housing dataset – Sourced from Kaggle. 

### https://www.kaggle.com/ericpierce/new-york-housing-zillow-api
### https://www.kaggle.com/ericpierce/austinhousingprices?select=cleandata.csv

* The JSON format for Yelp users’ data - Sourced from Kaggle.

### https://www.kaggle.com/yelp-dataset/yelp-dataset?select=yelp_academic_dataset_user.json 

## 2. Data Transformation (Data Cleanup and Analysis)

The transformation includes following steps –

* Using Pandas functions in Jupyter Notebook to transform all CSV files into dataframes. It also includes ‘.groupby()’ to combine house listings by number of bedrooms, ‘.merge()’ to merge dataframes for New York and Austin housings.
* Using Python transformation functions for data cleaning, joining, filtering, and aggregating such as, ‘.copy()’ to select only desired columns, ‘.dropna()’ to remove empty cells (NaN values) and duplicate rows, ‘.mean()’ to find averages, and ‘.median()’ to find median prices. 
* It also includes converting datatypes for certain columns. I used ‘. astype(float)’ to convert price column from string to float.
* Dataframe formatting was performed by using ‘.map("${:,.2f}".format)’ to display price column  with proper readability.
* Analysis was done by comparing average and median house prices for both cities. It was done by merging two dataframes that had statistics for each city’s housing prices.

## 3. Load

I used a relational database called Postgresql as the final production database to load the data into. The following tables and columns were created-
* newyork_housing with the columns - num_bedrooms, price, street_address, city.
* austin_housing with the columns - num_bedrooms, price, street_address, city.
* yelp_users with the columns - user_id, user_name, yelping_since, review_count, average_stars, us_state.

The data was loaded successfully in these tables. 

* New York housing table - 

![](https://github.com/poonam-ux/ETL_Project/blob/main/Images/newyork_housing_table.png)

* Austin housing table - 

![](https://github.com/poonam-ux/ETL_Project/blob/main/Images/austin_housting_table.png)

* Yelp users table - 

![](https://github.com/poonam-ux/ETL_Project/blob/main/Images/yelp_users_table.png)

* Top Yelp users by review counts - 

![](https://github.com/poonam-ux/ETL_Project/blob/main/Images/top_yelp_users_by_review_count.png)

