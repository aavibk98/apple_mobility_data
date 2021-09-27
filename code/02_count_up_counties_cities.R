# script to use the dplyr package to count up the number of cities and counties
# for each transportation type in a given state that have detailed Apple
# mobility data available and then eventually to save it to a .csv

# Aavikumar Bhakta
# September 26, 2021
# abhakta2@dons.usfca.edu

# load in each of the datasets from Michigan, Utah, Texas, Georgia, and Vermont
# from the output folder
source("code/functions/counties_cities_trans_tally.R")

for (input in c("output/applemobilitytrends-2021-09-17_Michigan.csv",
               "output/applemobilitytrends-2021-09-17_Utah.csv",
               "output/applemobilitytrends-2021-09-17_Texas.csv",
               "output/applemobilitytrends-2021-09-17_Georgia.csv",
               "output/applemobilitytrends-2021-09-17_Vermont.csv")) {
  counties_cities_trans_tally(
    input_mobility_data = input)
}
