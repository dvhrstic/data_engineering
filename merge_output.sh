#!/bin/bash 
# Task 1
echo "dt,time,device_name,house_number,user_id,country_code,program_title,season,season_episode,genre,product_type,broadcast_right_start_date,broadcast_right_end_date" > results/broadcast_rights.csv
for i in task1/output/*.csv ; do
            echo "File: $i"
            cat $i >> results/broadcast_rights.csv
done
rm -r task1
# Task 2
echo "dt,program_title,device_name,country_code,product_type,unique_users,content_count" > results/product_user_count.csv
for i in task2/output/*.csv ; do
            echo "File: $i"
            cat $i >> results/product_user_count.csv
done
rm -r task2
# Task 3
echo "watched_hour,genre,unique_users" > results/users_per_genre_hour.csv
for i in task3/output/*.csv ; do
            echo "File: $i"
            cat $i >> results/users_per_genre_hour.csv
done
rm -r task3
echo "Done"


