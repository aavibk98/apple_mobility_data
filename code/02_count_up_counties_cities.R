# script to use the dplyr package to count up the number of cities and counties
# for each transportation type in a given state that have detailed Apple
# mobility data available and then eventually to save it to a .csv

# Aavikumar Bhakta
# September 26, 2021
# abhakta2@dons.usfca.edu

# load in each of the datasets from Michigan, Utah, Texas, Georgia, and Vermont
# from the output folder
source("code/functions/counties_cities_trans_tally.R")

for (input in c("output/subsetted_states_wide/applemobilitytrends-2021-10-02_Michigan.csv",
               "output/subsetted_states_wide/applemobilitytrends-2021-10-02_Utah.csv",
               "output/subsetted_states_wide/applemobilitytrends-2021-10-02_Texas.csv",
               "output/subsetted_states_wide/applemobilitytrends-2021-10-02_Georgia.csv",
               "output/subsetted_states_wide/applemobilitytrends-2021-10-02_Vermont.csv")) {
  counties_cities_trans_tally(
    input_mobility_data = input)
}
