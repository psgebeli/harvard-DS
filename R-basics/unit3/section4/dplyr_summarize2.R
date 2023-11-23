# Summarizing with more than one value 
# quantile() lets us access min, median, and max in one line 

# quantile(x, c(0, 0.5, 1)), where x is some vector 

# but 
#murders %>%
#  filter(region == "West") %>% 
#  summarize(range = quantile(rate, c(0, 0.5, 1)))

# doesnt work 

# for cols, we must write a function that returns a data frame rather than
# a vector 

my_quantile <- function(x){
  r <- quantile(x, c(0, 0.5, 1))
  data.frame(minimum = r[1], median = r[2], maximum = r[3])
}
murders %>%
  filter(region == "West") %>%
  summarize(my_quantile(rate))
