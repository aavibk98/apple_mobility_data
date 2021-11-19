# The goal of this script is to create a function that uses the dplyr
# package to tally up the number of cities and counties for each transportation
# type in a given state

# Aavikumar Bhakta
# abhakta2@dons.usfca.edu
# September 24, 2021

# load the packages
library("dplyr")
library("readr")

# creating the function to tally up the number of cities and counties for each
# transportation type based on the state you want to tally
counties_cities_trans_tally <- function(input_mobility_data,
                                                 state_to_tally) {

# read in the output .csv file from the 01_subset_data_to_MI_only.R script
# in the archived_versions subfolder in the code folder
  state_mobility_data <- readr::read_csv(input_mobility_data)

# creating the dplyr chain that groups the state by geo_type and
# transportation_type. Then tallies the rows in each state with the
# same parameters.
  count_cities_counties_by_type <- state_mobility_data %>%
    select(geo_type, transportation_type) %>%
    group_by(geo_type, transportation_type) %>%
    tally()

# extract core name for output file naming use
  core_name <- tools::file_path_sans_ext(basename(input_mobility_data))

# creating an output .csv file
  readr::write_csv(count_cities_counties_by_type,
                   file = paste0("output/subsetted_states_tallied/",
                                 core_name,
                                 "_",
                                 "tally",
                                 ".csv"))

  return(count_cities_counties_by_type)
}
