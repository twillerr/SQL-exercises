-- recap importing csv files, data types and how to create a composite primary key

CREATE DATABASE disney_imdb;
USE disney_imdb;

-- import the csv file to create our table using Table Data Import Wizard
SELECT * from disney_movies;
-- change the data type to year (instead of int) and to boolean for our categories
ALTER TABLE disney_movies   
MODIFY COLUMN Released YEAR,  
MODIFY COLUMN Action_genre BOOLEAN,
MODIFY COLUMN Animation_genre BOOLEAN; 

-- identify which columns (attributes) to use as our composite primary key
-- add that to the table
SELECT * FROM disney_movies;
-- we can only use columns that are not nullable as our primary key
-- look at the table and see what we need to change

ALTER TABLE disney_movies MODIFY Title VARCHAR (50) NOT NULL;
-- check again (use the info icon) and repeat for the Year column
ALTER TABLE disney_movies MODIFY Released YEAR NOT NULL;

ALTER TABLE disney_movies
ADD CONSTRAINT PK_movie PRIMARY KEY (Title, Released);

SELECT * FROM disney_movies;
