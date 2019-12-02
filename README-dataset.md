# About Datasets

This is a description of all the 3 datasets obtained for each of the three tasks.
In order to see the implemented solutions with detailed explanations for each step please look at `code.ipynb` file.

### Description of the data

Every dataset is a `.csv` file in a table format. Depending on a task each table has its own columns with corresponding values.

```
results/
  - broadcast_right.csv
  - product_user_count.csv
  - users_per_genre_hour.csv

```
#### Task 1 - task1_broadcast_right.csv
This data has information regarding the sales and rentals broadcast rights. It is obtained by joining the `whatson` and `started_streams` data with a joint condition of having the same identifier for a title and country. The product types are `tvod` and `svod`. Also, only the dates from `started_streams` being inside `broadcast_right` period from `whatson` are selected.
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
Here, data is about product and user count. Each program titles has a total count of views in column `content_count` and number of unique users that watched the title in column `unique_users`.
```
dt - date originating from started_streams data : DATE [YYYY-MM-DD]
program_title	- from started_streams data : STRING
device_name	- from started_streams data : STRING
country_code - from started_streams data : STRING
product_type - from started_streams data : STRING
unique_users - number of unique users for each title : NUMBER
content_count - the amount of views each product has : NUMBER

```
#### Task 3 - users_per_genre_hour.csv
Here, the most popular genres and watching hours are ordered based on the number of unique users they have.
```
watched_hour - The hour of the content being watched DATE [HH]. From started_streams                  data, where the the hour is extracted from time variable
genre - from started_streams data : STRING
unique_users - number of unique users for each title : NUMBER. Number of distinct                     users watching a certain genre at certain hour.
```





