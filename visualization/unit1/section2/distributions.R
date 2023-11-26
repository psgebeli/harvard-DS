# Smooth density plots 

# Similar to histograms, but more aesthetically pleasing 

# Main concept: we assume that our list of values comes from a much 
# larger of unobserved values 
# (eg list of student heights comes from a hypothetical list of all students
# in the world)

# This big list has a distribution, and this is want we want to show to ET
# as its more general. But we dont have this values.

# However we can assume/approximate
# Assume 1 million values. Make a histogram with very very small bins 
# If we do this, consecutive bins are similar (smooth)

# The smooth density is the curve that fits this small bin distribution 
# We compute the curve on the frequency scale rather than the count scale 

# With our ex, we have 708 measurements, not 1M! We cant have very small bins!
# How can we estimate?

# Start by making a histogram with our data, compute frequencies rather than
# counts

# Note: ggplot function has customizable smoothness 
# Should select a degree of smoothness that we can defend as being 
# representative 

# Units
# The y-axis is "density", scaled so that the area under the curve 
# adds up to 1. Imagine forming a bin that is 1 unit wide,
# the y axis tells us the proportion of values in that bin 
# (only true for width 1)
# In other widths, compute the proportion of total AREA confined in that bin