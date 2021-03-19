# ETL Project

## Comparing housing prices in New York and Austin

This project is designed to conduct extraction, transformations, and loading the housing data for two major cities in the US, New York and Austin. It also loads the Yelp users’ data (over 2 million datapoints) into the database.

The purpose of this project was to migrate the data to a production database. This database compares the housing prices in New York and Austin. The project also stores, transforms, and loads a large dataset (Yelp users’ data) successfully into the database.

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

