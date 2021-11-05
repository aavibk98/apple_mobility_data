# load packages
library("tidyr")
library("dplyr")
library("readr")

# testing variables for function
data_to_long <- paste0("output/subsetted_states_wide/",
"applemobilitytrends-2021-10-02_Michigan.csv")
state_to_long <- "Michigan"

# create a function to convert wide data from "output/subsetted_states_wide"
# folder with individual state outputs and convert those files to
# long format
convert_mobility_data_to_long <- function(data_to_long, state_to_long) {

# read in wide format data
  long_dataset <- readr::read_csv(data_to_long)

# convert wide data to long data but putting all dates in a single column
# and all relative mobility data in a single column
# remove the "X" from the beginning of the dates
  long_dataset <- long_dataset %>%
    tidyr::pivot_longer(values_to = "rel_mobility", names_to = "date",
                        cols = starts_with("20"), values_drop_na = TRUE)

# extract core name for output file name use
  core_name <- tools::file_path_sans_ext(basename(data_to_long))

# sanitize state name for output files
  state_no_spaces <- gsub(state_to_long, pattern = " ", replacement = "_")

# read out the output file in .csv form
  readr::write_csv(long_dataset, file = paste0("output/subsetted_states_long/",
                                             "applemobilitytrends-2021-10-02",
                                             "_",
                                             state_no_spaces,
                                             "_",
                                             "long",
                                             ".csv"))
  return(long_dataset)
}
