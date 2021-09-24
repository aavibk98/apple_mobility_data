# script to read in apple mobility data from a csv file
# subset the data to just include rows from any particular US state
# and then write a csv file that only contains that subset
# uses function in the code/function directory

# Aavikumar Bhakta
# abhakta2@dons.usfca.edu
# September 18, 2021

# load functions
source("code/functions/subset_mobility_data_to_state.R")

# test out the use of the function
subset_mobility_data_to_state(
  input_file_name = "data/raw_data/applemobilitytrends-2021-09-17.csv",
  state_to_subset = "Michigan")
