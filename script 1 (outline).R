#1 Find the data set we want
#tidy the data
#     this will include pivots, filter, group_by, etc.
#model the data
#graph (show and explain)

#import data
chick_fil_a_data <- read_csv("/Users/lucasberth/Documents/Coding Docs/DSAA---Project/chick-fil-a-nutrition.csv")

head(chick_fil_a_data)

chick_fil_a_data %>%
  separate('Serving size', into = "Serving Size(g)", sep = 'g')

#still figuring out how to get the g off the number in the serving size column
top5size <- chick_fil_a_data %>%
  separate('Serving size', into = "Serving Size(g)", sep = 'g') %>%
  data_frame("Serving Size(g)" = numeric()) %>%
  select("Menu", "Serving Size(g)") %>%
  arrange(desc("Serving Size(g)")) %>%
  slice(5)
  


#question 2
chick_fil_a_data %>%
  select(Menu, Calories, `Sugar (G)`) %>%
  arrange(desc(Calories)) %>%
  slice(1:5)

#trying a regression // problem with this one 
chick_fil_a_data %>%
  filter()
  ggplot(aes("Protein (G)", "Calories")) +
  geom_point()

