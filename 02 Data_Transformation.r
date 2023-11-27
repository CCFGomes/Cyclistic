# Data cleaning

# Removing duplicates

# removing duplicates based on the column ride_id in the cyclistic_merged data frame
cyclistic_no_dups <- cyclistic_merged[!duplicated(cyclistic_merged$ride_id), ]
print(paste("Removed", nrow(cyclistic_merged) - nrow(cyclistic_no_dups), "duplicated rows"))

install.packages("tidyr")

# removing missing values (NA)

cyclistic_merged <- drop_na(cyclistic_merged)
head(cyclistic_merged)

# calculating the ride time in minutes (ride_time_m) by subtracting the started_at from the ended_at column
# converting the result to minutes using the as.numeric() function. 
# summary() function is used to generate a summary of the ride_time_m column.
cyclistic_no_dups <- cyclistic_no_dups %>%
  mutate(ended_at = as.POSIXct(ended_at),
         started_at = as.POSIXct(started_at),
         ride_time_m = as.numeric(ended_at - started_at) / 60)

summary(cyclistic_no_dups$ride_time_m)

# Converting data frame to a datetime format
#This will be represented by POSIXct objects. 
#This allows for easier manipulation and analysis of the date and time values in subsequent data operations.

# Converting the "started_at" and "ended_at" columns in the data frame cyclistic_no_dups to POSIXct (POSIXct is a class representing date and time values) format. 
#It uses the as.POSIXct() function to perform the conversion

cyclistic_no_dups$started_at <- as.POSIXct(cyclistic_no_dups$started_at, "%Y-%m-%d %H:%M:%S")
cyclistic_no_dups$ended_at <- as.POSIXct(cyclistic_no_dups$ended_at, "%Y-%m-%d %H:%M:%S")

# creating a column called “ride_length, calculating the length of the rides.
cyclistic_no_dups$ride_length <- as.POSIXct(cyclistic_no_dups$ended_at) - as.POSIXct(cyclistic_no_dups$started_at)

head(cyclistic_no_dups)

# Creating a column called “day_of_week,” and calculate the day of the week that each ride started using the “WEEKDAY” command 
cyclistic_no_dups$day_of_week <- weekdays(as.Date(cyclistic_no_dups$started_at))
head(cyclistic_no_dups)

# Formatting as a number with no decimals
# 1 = Sunday and 7 = Saturday.
cyclistic_no_dups$day_of_week <- as.integer(factor(cyclistic_no_dups$day_of_week, levels = c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")))
head(cyclistic_no_dups)








