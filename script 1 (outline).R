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
  
#simple regression
model1 <- lm(`Protein (G)` ~ Calories, data=chick_fil_a_data_2)
summary(model1)
#Min = -79.93; 1Q = -5.58; Median = 1.08; 3Q = 8.998; Max = 62.53
#Protein = 0.422 + 0.04(Calories)
#R^2 = .76

#graphing simple regression
model1 %>%
  ggplot(aes(`Protein (G)`, Calories)) +
  geom_point()
#there are a few outliers, and it doesn't look linear

    
#multiple regression
model2 <- lm(`Protein (G)` ~ Calories + `Fat (G)` + `Sodium (MG)` + `Sugar (G)`, data=chick_fil_a_data_2)
summary(model2)
#Min = -20.43; 1Q = -3.36; Median = -1.89; 3Q = 3.87; Max = 21.6
#Protein = 2.56 + 0.06(Calories) - 0.64(Fat) + 0.01(Sodium) - 0.25(Sugar)
#R^2 adj. = .966



