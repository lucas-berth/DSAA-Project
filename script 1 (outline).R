#1 Find the data set we want
#tidy the data
#     this will include pivots, filter, group_by, etc.
#model the data
#graph (show and explain)

#import data
chick_fil_a_data <- read_csv("/Users/lucasberth/Documents/Coding Docs/DSAA---Project/chick-fil-a-nutrition.csv")
chick_fil_a_data_jocelyn <- read_csv("C:/Users/apple/OneDrive/Documents/Coding 2/DSAA-Project/chick-fil-a-nutrition.csv")

head(chick_fil_a_data)
head(chick_fil_a_data_jocelyn)


#I do not think this one is working still
top5size <- chick_fil_a_data %>%
  mutate(Serving size (G) = numeric) %>%
  select("Menu", "Serving size (G)") %>%
  arrange(desc("Serving size (G)")) %>%
  slice(1:5)
  


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
  
  
#Blake

