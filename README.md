# Data Engineering Tasks 
## Prerequisits and instalment requirements
Jupyter Notebook
Spark 
Scala
UNIX system
## Description of implementation
In order to see the implemented solutions with detailed explanations for each step please look at `code.ipynb` file.
## Running
Open compressed folders `data` and `results`.
Then open the `code.ipynb` file and run each section of the code sequentally in the notebook.
Considering the distributed nature of spark, all the results are partitioned in different files. In order to bring them together run following command in the terminal:
* `sh merge_output.sh`
Doing so will collect all the results of task 1, 2 and 3 into corresponding `.csv` files in directory `results`.
## Results datasets
### Task 1
Dataset `whatson` has 875 224 while `started_streams` consists of 99 829 data points with `tvod` or `svod` product types.
After joining the two datasets with a condition of having the same title identifier and country, the amount of entries jumped to 1 571 021. Even if this was an inner join, the reason why this number is even higher than the sum ot two previous ones is because there many values in both datasets have the same title identifier and country and thus there are a lot of matches.
Finally, the data is filtered depending on whether the dates from `started_streams` lie in the period of broadcast right(from `whatson` data). That resulted in 109 642
unique entries.
### Task 2
For all the product types, dataset `strated_streams` has in total 100 000 entries.
After joining the resulting columns `content_count` and `unique_users` to the `streams_df` dataframe the amount of unique datapoints is 18 454.
### Task 3
Here, the data from `started_streams` is grouped based on `genre` and `watched_hour`(hour obtained from variable `time`). After that the result is aggregated so that the unique users get calculated for each pair of `genre` and `watched_hour`. Finally, after joining that with a dataframe containg the data from `started_streams` there are 192 unique entries.

**For more information about the resulting data sets and datatypes please have a look at file `README-dataset.md` file.**

## Authors

* **Dusan Viktor Hrstic** - *Initial work* - [dvhrstic](https://github.com/dvhrstic)