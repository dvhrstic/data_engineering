# Title
Data Engineering Tasks
### Prerequisits and instalment requirements
Spark 
Scala
Terminal
### Description of implementation
In order to see the implemented solutions with detailed explanations for each step please look at `.ipynb` file.
## Running
First open the `.ipynb` file and run each section of the code sequentally in the notebook.
Considering the distributed nature of spark, all the results are partitioned in different files. In order to bring them together run following commands in the terminal:
* `sh task1_mergefiles.sh` 
* `sh .sh`  
* `sh .sh`
Doing so will collect all the results of task 1, 2 and 3 into corresponding `.csv` files in directory `results`.
**Note** In order to re-run everything folders `task1`, `task2` and `task3` have to be removed. 
## Results datasets
### Task 1
Dataset `whatson` has 875224 while `started_streams` consists of 99829 data points with `tvod` or `svod` product types.
After joining the two datasets with a condition of having the same title identifier and country, the amount of entries jumped to 1571021. Even if this was an inner join, the reason why this number is even higher than the sum ot two previous ones is because there many values in both datasets have the same title identifier and country and thus there are a lot of matches.
Finally, the data is filtered depending on whether the dates from `started_streams` lie in the period of broadcast right(from `whatson` data). That resulted in 931 268 entries.
### Task 2
**For more information about the resulting data sets and datatypes please have a look at file `README-dataset.md` file.**
## Task1 process
## Task2 process
## Task3 process
