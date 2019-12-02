# About Datasets

This is a description of all the 3 datasets obtained for each of the three tasks.
In order to see the implemented solutions with detailed explanations for each step please look at `.ipynb` file.

### Description of the data

Every dataset is a `.csv` file in a table format. Depending on a task each table has its own columns with corresponding values. You also have to brief about the naming convention of the files in different directories. 

```

results/
  - broadcast_right.csv
  - product_user_count.csv
  - 

```
The columns names in this dataset are stated bellow with following datatype values:
#### Task 1 - task1_broadcast_right.csv

```
dt - date originating from started_streams data : DATE [YYYY-MM-DD]
time - time of user viewing a title from started_streams data : DATE [HH:MM:SS]
device_name - from started_streams data : STRING
house_number - title identifier from started_streams data : NUMBER
user_id - user identifier from started_streams data : STRING
country_code - from started_streams data : STRING
program_title - from started_streams data : STRING
season - from started_streams data : NUMBER
season_episode - from started_streams date : STRING
genre - from started_streams data : STRING
product_type - from started_streams data : STRING
broadcast_right_start_date - from whatson data : DATE [YYYY-MM-DD]
broadcast_right_end_date - from whatson data : DATE [YYYY-MM-DD]

```
#### Task 2 - product_user_count.csv
```
dt - date originating from started_streams data : DATE [YYYY-MM-DD]
program_title	- from started_streams data : STRING
device_name	- from started_streams data : STRING
country_code - from started_streams data : STRING
product_type - from started_streams data : STRING
unique_users - number of unique users for each title : NUMBER
content_count - the amount of views each product has : NUMBER

```
#### Task 3 - 




### And file formats

If the data includes images or audio, you can mention the file format eg.(.svg, .png, .mpeg).
```
-500 images, format svg.
```





