# script to use a for loop that uses the function subset_mobility_data_to_state
# to read in five different states and subset each of them into a separate
# output .csv file in the output directory

# Aavikumar Bhakta
# abhakta2@dons.usfca.edu
# September 24, 2021

# load functions
source("code/functions/subset_mobility_data_to_state.R")

# test out the use of the function
for (state in c("Michigan", "Utah", "Texas", "Georgia", "Vermont")) {
  subset_mobility_data_to_state(
    input_file_name = "data/raw_data/applemobilitytrends-2021-09-17.csv",
    state_to_subset = state)
}
