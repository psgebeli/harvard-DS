# It is often convenient to have a way to access the dataframe being 
# piped. We use dots

us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5) %>%
  .$rate
us_murder_rate
class(us_murder_rate)

# Think of the dot as a placeholder for the dataframe that is being piped
# Because its a dataframe, we can access its columns with a $
# Will see more uses later