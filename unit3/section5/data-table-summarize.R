# Summarizing with data.table 
library(data.table)
library(dslabs)
data(heights)
heights <- setDT(heights)

# Can call functions inside .()

# dplyr: s <- heights %>%
#           summarize(average = mean(height), standard_deviation = sd(height))

# data.table: 
s <- heights[, .(average = mean(height), standard_deviation = sd(height))]
s

# dplyr: s <- heights %>%
#           filter(sex == "Female") %>%
#           summarize(average = mean(height), standard_deviation = sd(height))

# data.table: s <- heights[sex == "Female",
#                                   .(average = mean(height), 
#                                   standard_deviation = sd(height))]

# How can we compute multiple summaries ? 
# Write funct computing min, median, max and returns dataframe

median_min_max <- function(x){
  qs <- quantile(x, c(0.5, 0, 1))
  data.frame(median = qs[1], minimum = qs[2], maximum = qs[3])
}

heights[, .(median_min_max(height))]

# Now how do we compute summaries for different groups?
# dplyr : group_by() then summarize()
# by: split data into groups based on values in a categorical variable 
heights[, .(average = mean(height), standard_deviation = sd(height)), by = sex]

