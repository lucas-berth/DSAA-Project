#1 Find the data set we want
#tidy the data
#     this will include pivots, filter, group_by, etc.
#model the data
#graph (show and explain)

#import data
chick_fil_a_data <- read_csv("/Users/lucasberth/Documents/Coding Docs/DSAA---Project/chick-fil-a-nutrition.csv")
chick_fil_a_data_2 <- read_csv("C:/Users/apple/OneDrive/Documents/Coding 2/DSAA-Project/chick-fil-a-nutrition.csv")

head(chick_fil_a_data)
head(chick_fil_a_data_2)


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
  
  
#multiple regression
model2 <- lm(Calories ~ `Fat (G)` + `Sodium (MG)` + `Sugar (G)` + `Protein (G)`, data=chick_fil_a_data_2)
summary(model2)

#Min = -180.71; 1Q = -29.73; Median = -2.01; 3Q = 22.69; Max = 362.44
#Calories = -4.16 + 9.92(Fat) + 0.04(Sodium) + 4.08(Sugar) + 5.11(Protein)



