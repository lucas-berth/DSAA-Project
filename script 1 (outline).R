#1 Find the data set we want
#tidy the data
#     this will include pivots, filter, group_by, etc.
#model the data
#graph (show and explain)

#import data
chick_fil_a_data <- read_csv("/Users/lucasberth/Documents/Coding Docs/DSAA---Project/chick-fil-a-nutrition.csv")

head(chick_fil_a_data)

top5size <- chick_fil_a_data %>%
  select(`Serving size`, Menu) %>%
  slice(2)
  