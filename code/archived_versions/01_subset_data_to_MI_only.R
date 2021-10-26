# script to read in apple mobility data from a csv file
# subset the data to just include rows from Michigan
# and then write a csv file that only contains that subset

# Aavikumar Bhakta
# abhakta2@dons.usfca.edu
# September 1, 2021

# read in the complete csv file
all_covid_data <- read.csv("data/raw_data/applemobilitytrends-2021-09-01.csv")

# subset the dataset to only include rows where the sub.region column has
# "Michigan"
michigan_data <- all_covid_data[all_covid_data$sub.region == "Michigan", ]

# save the Michigan data to a new csv file in the output directory
write.csv(michigan_data, file = "output/michigan_apple_mobility_data.csv")
