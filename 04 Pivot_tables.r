# Install and load reshape2 package
install.packages("reshape2")
library(reshape2)

# Pivot table: Average ride_length for members and casual riders
pivot_table1 <- dcast(cyclistic_no_dups, formula = . ~ member_casual, 
                     value.var = "ride_length", fun.aggregate = mean)

# Pivot table: Average ride_length for users by day_of_week
pivot_table2 <- dcast(cyclistic_no_dups, formula = day_of_week ~ member_casual, 
                     value.var = "ride_length", fun.aggregate = mean)

# Pivot table: Number of rides for users by day_of_week
cyclistic_no_dups$ride_count <- 1
pivot_table3 <- dcast(cyclistic_no_dups, formula = day_of_week ~ member_casual, 
                     value.var = "ride_count", fun.aggregate = sum)

# Print pivot tables
print(pivot_table1)
print(pivot_table2)
print(pivot_table3)
