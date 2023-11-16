# Sorting data tables 

# order() and sort() is good, but for entire tables, dplyr's arrange() is better

murders %>% arrange(population) %>% head()
murders %>% arrange(rate) %>% head()

# Default is to order in ascending order. Dyplr's desc() can change this.
murders %>% arrange(desc(rate)) %>% head() 

# If we are ordering by a column with ties, we can use a 2nd column to break
# ties 
# e.g order by region, then within each region, order by rate
murders %>% arrange(region, rate) %>% head

# In this code we use head() to avoid having a long list show up 
# top_n() can be used for larger proportions
murders %>% top_n(10, rate)

# Note that top_n picks the n rows with the HIGHEST values in the column (2nd arg)
# but rows arent sorted
# to see top 10 states ranked by murder rate and sorted,
murders %>% arrange(desc(rate)) %>% top_n(10)