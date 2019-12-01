#!/bin/bash 
echo "dt,program_title,device_name,country_code,product_type,unique_users,content_count" > results/product_user_count.csv
for i in task2/output/*.csv ; do
            echo "File: $i"
            cat $i >> results/product_user_count.csv
done
echo "Done"