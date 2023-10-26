# Variables can have different types, or classes, which can be seen via 
a <- 2
class(a) # numeric
class(ls) # function

# Single-digit variables are not very efficient in data analytics, though
# We often use dataframes, which are essentially tables 

# Take this example predefined by the course
library(dslabs)
data("murders")
class(murders)

# str() stands for structure and shows the structure of an object, lets
# look at the structure of a dataframe 
# obs. --> observations, aka rows
str(murders)

# Can show first 6 lines using head()
head(murders)

# Dataframes typically have the same format, which is that rows 
# represent different observations (in this case states), and columns
# represent different variables

# To access data from this object, we need to understand the components
# To access variables, use the $ symbol, the accessor
murders$population

# We can get the names of the variables by using str() or by using 
# names()
names(murders)

# IMPORTANT
# The order of the entries in the list murders$population preserves 
# the order of the rows in the data table!

# The murders$population object is not one value, but 51. These types of 
# objects with multiple entries are called VECTORS 
# (although a single number is technically still a vector)
# length() tells you the length of a vector
pop <- murders$population
length(pop)
class(pop)

# Vectors can also store characters
# Since characters are in variable names, use quotes to distinguish
# between variable names and character strings
a <- 1
a
"a"

# An example of a character vector is the state names 
class(murders$state)

# There are also logical vectors, which are either true or false
z <- 3 == 2
z
class(z)

# Since == is a relational operator, asking if 3 is equal to 2 (not 3=2!)

# There are also factors, such as the regions in the murders dataset
# Should be a character since they are character names!
# but...
class(murders$region)

# Factors are useful for storing categorical data
# levels() return the "levels of categorization"
levels(murders$region)
# Saving categorical data this way is more efficient memory-wise
# Will learn more later :D