library(dplyr)

data = data.frame(Titanic)
head(data)

#total_passengers_in_ship
n_passengers = summarise(data, n_passengers = sum(Freq))
n_passengers

#Piping feeds previous data frame in next statement
n_passengers = data %>% (# Ctrl+shift+M to add piping)
  summarise(n_passengers = sum(Freq))
n_passengers

#groupby passengers by Class
n_passengers_class = data %>% 
  group_by(Class) %>% 
  summarise(n_passengers = sum(Freq))
n_passengers_class

#select
data_sex_freq_age = data %>% 
  select(Sex, Freq, Age)
head(data_sex_freq_age)

#mutate (to add/alter new/exisiting variables)
datanew = data %>% 
  mutate(Freq_10 = Freq * 10)
head(datanew)

#filter
data_female = data %>% 
  filter(Sex == 'Female')
head(data_female)

#arrange
data = data %>% 
  arrange(desc(Freq))
head(data)
  