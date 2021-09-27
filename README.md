Analysis of Apple Mobility Data in the Era of COVID-19

Aavikumar Bhakta
abhakta2@dons.usfca.edu

The aim of this project is to analyze the mobility data made available by Apple.

That data is available from the following URL:
https://covid19-static.cdn-apple.com/mobility

It currently uses dplyr to work with some of the tabular data. Eventually, it will also include use of ggplot2 to visualize the dataset.

## Change Log

* 2021-09-26: Modified the second script to read all the five states output files created by the first script and run them through a for loop to create five different output files for those states that shows the count of cities and counties for each transportation type.
* 2021-09-24: Created a function called counties_cities_trans_tally that uses dplyr to tally up the number of cities and counties for each transportation type in a given state.
* 2021-09-24: Modified the first script to use a for loop that calls the function subset_mobility_data_to_state to subset a specific state from the larger country file and put and do that for five different states. Each state was given its own .csv output file in the output directory.
* 2021-09-21: Added second script to use dplyr to tally up the count of cities and counties in a given state that have data from the different transportation types
* 2021-09-18: A new version of the data file was downloaded, and I also worked 
to refactor the code to be more general and to allow for any state to 
be susbset from the larger file. Created a function file called subset_mobility_data_to_state.
* 2021-09-01: The data file was originally downloaded for analysis.
