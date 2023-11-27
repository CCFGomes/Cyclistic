# installing tidyverse package.
# tidyverse is a collection of R packages specifically designed for working with data. 
install.packages("tidyverse")

# installing tidyverse library.
# It’s a standard library for most data analysis.
library(tidyverse)

# concatanating files into one dataframe

# List the file names of the CSV files to be concatenated
csv_files <- list.files(path = "../input", recursive = TRUE, full.names=TRUE)

# Initialize an empty data frame to store the concatenated data
concatenated_data <- data.frame()

# Iterate over each CSV file
for (file in csv_files) {
  # Read the CSV file and append its data to the concatenated_data data frame
  data <- read.csv(file)
  concatenated_data <- rbind(concatenated_data, data)
}

# Write the concatenated data to a new CSV file
cyclistic_merged <- do.call(rbind, lapply(csv_files, read.csv))

# using head() function to display the first few rows of a data frame
head(cyclistic_merged)


