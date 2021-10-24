Analysis of Apple Mobility Data in the Era of COVID-19

Aavikumar Bhakta
abhakta2@dons.usfca.edu

The aim of this project is to analyze the mobility data made available by Apple.

That data is available from the following URL:
https://covid19-static.cdn-apple.com/mobility

It currently uses dplyr to work with some of the tabular data. Eventually, it will also include use of ggplot2 to visualize the dataset.

## Change Log

* 2021-10-23: Parameterize Rmd and add bash script to drive knitting
* 2021-09-21: Added second script to use dplyr to tally up the count of cities and counties in a given state that have data from the different transportation types
* 2021-09-18: A new version of the data file was downloaded, and I also worked 
to refactor the code to be more general and to allow for any state to 
be susbset from the larger file.
* 2021-09-01: The data file was originally downloaded for analysis.
