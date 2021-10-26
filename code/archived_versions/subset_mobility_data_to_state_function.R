# script to read in apple mobility data from a csv file
# subset the data to just include rows from any particular US state
# and then write a csv file that only contains that subset

# Aavikumar Bhakta
# abhakta2@dons.usfca.edu
# September 18, 2021

# testing variables for the function
input_file_name <- "data/raw_data/applemobilitytrends-2021-09-17.csv"
state_to_subset <- "Michigan"

# create a function to subset any US state out of the full dataset
# this should also create an output CSV file that is named based on the state
# that is subsetted
subset_mobility_data_to_state <- function(input_file_name, state_to_subset) {
  # read in the complete csv file
  all_covid_data <- read.csv(input_file_name)

  # subset the dataset to only include rows where the sub.region column has
  # the state name in it, but we want all columns
  state_data <- all_covid_data[all_covid_data$sub.region == state_to_subset, ]

  # check that the subsetted data actually has data in it
  if (nrow(state_data) == 0) {
  stop("ERROR: No rows matching given state name. Did you make a type?")
    }

  # save the state data to a new csv file in the output directory
  write.csv(state_data, file = paste0("output/",
                                      tools::file_path_sans_ext(
                                        basename(input_file_name)),
                                      "_",
                                      state_to_subset,
                                      ".csv"))
}
