# Summary Statistics:

# Summary statistics for numerical variables
summary(cyclistic_no_dups$ride_length)

# Summary statistics for categorical variables
table(cyclistic_no_dups$day_of_week)

# Frequency Distribution:

# Frequency distribution for categorical variables
table(cyclistic_no_dups$rideable_type)
table(cyclistic_no_dups$member_casual)

# Measures of Central Tendency and Dispersion:

# Mean and max of ride length
mean_value <- mean(cyclistic_no_dups$ride_length)
max_value <- max(cyclistic_no_dups$ride_length)

# Standard deviation and variance of ride length
sd_value <- sd(cyclistic_no_dups$ride_length)
var_value <- var(cyclistic_no_dups$ride_length)

# Display the outputs with descriptive strings
paste("Mean of ride length:", mean_value)
paste("Max of ride length:", max_value)
paste("Standard deviation of ride length:", sd_value)
paste("Variance of ride length:", var_value)

# Cross-tabulations:

# Cross-tabulation between rideable_type and member_casual
table(cyclistic_no_dups$rideable_type, cyclistic_no_dups$member_casual)

