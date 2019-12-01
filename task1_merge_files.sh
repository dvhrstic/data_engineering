#!/bin/bash 
echo "dt,time,device_name,house_number,user_id,country_code,program_title,season,season_episode,genre,product_type,broadcast_right_start_date,broadcast_right_end_date" > results/broadcast_rights.csv
for i in task1/output/*.csv ; do
            echo "File: $i"
            cat $i >> results/broadcast_rights.csv
done
echo "Done"