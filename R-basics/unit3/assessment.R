# Section 3 Assessment 

# Use dslabs dataset heights
library(dslabs)
data(heights)
options(digits = 3)     # Report 3 sigfigs for all answers 
library(data.table)

# 1. First, determine the average height in this dataset. Then create a logical 
# vector `ind` with the indices for those individuals who are above average 
# height.
# How many individuals in the dataset are above average height?

# Set heights as a data.table object
heights <- setDT(heights)

# Get the average by accessing the height column of heights and taking mean
avg <- mean(heights$height)

# Store the number of rows in the heights datatable after the condition
# height >= avg is applied, and store that as the number of tall people
tall_people <- nrow(heights[height >= avg])

# Show answer
tall_people


# 2. How many individuals in the dataset are above average height 
# and are female?
tall_girls <- nrow(heights[height >= avg & sex == "Female"])
tall_girls

# 3. What proportion of individuals in the dataset are female?
num_girls <- nrow(heights[sex == "Female"])
num_boys <- nrow(heights[sex == "Male"])
prop <- num_girls / (num_boys + num_girls)
prop

# 4a. Determine the minimum height in the heights dataset
min <- min(heights$height)
min

# 4b. Find the index of the first individual with minimum height
min_ind <- match(min, heights$height)
min_ind 

# 4c. Find the sex of this individual
min_sex <- heights$sex[min_ind]
min_sex

# 5a. Determine the maximum height 
max <- max(heights$height)
max

# 5b. Which integer values are between the max and min heights?
x <- 50:82

# 5c. How many of the ints in x are not heights in the dataset? 
sum(!x %in% heights$height)

# 6. Create a dataset called heights2 which is equal to heights but with a 
# new column: height in cm 
heights2 <- copy(heights)
heights2[, ht_cm := height * 2.54]
heights2

# 6a. What is the height in cm of the 18th individual?
heights2$ht_cm[18]

# 6b. Mean height in cm?
avg_cm <- mean(heights2$ht_cm)
avg_cm

# 7a. How many females are in heights2?
sum(heights2$sex == "Female")

# 7b. What is the mean height of the females in cm? 
avg_cm_female <- mean(heights2$ht_cm[heights$sex == "Female"])
avg_cm_female

# 8. The olive dataset contains composition in percentage of 8 fatty acids 
# found in the lipid fraction of 572 olive oils 
data(olive)
head(olive)

# Plot the palmitic acid vs palmitoleic acid in a scatterplot. What 
# kind of relationship is there?
plot(olive$palmitoleic, olive$palmitic)
# Positive, linear

# 9. Create a histogram of the percentage of eicosenoic acid in olive
hist(olive$eicosenoic)
# True/false: most common value is below 0.05% (TRUE)

# 10. Make a boxplot of palmitic acid with seperate distributions for each region
# Create a boxplot using boxplot function
boxplot(palmitic ~ region, data = olive,
        xlab = "Region", ylab = "Acid Percentage",
        main = "Boxplot of Acid Percentage by Region")


