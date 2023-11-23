# Vector operations are element wise 
# For example lets create a dataframe in F and convert to C

# Assign city names to city
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in F
temp <- c(35, 88, 42, 84, 81, 30)

# Convert to celsius
temp <- 5/9 * (temp - 32)

# Create a dataframe 
city_temps <- data.frame(name = city, temperature = temp)

# Similarly, (a, b) + (c, d) = (a+b, c+d)