#example of categorical variable bar graph
ggplot(penguins, aes(x = species))+
  geom_bar()

#example of numerical variable bar graph
ggplot(penguins, aes(x = body_mass_g))+
  geom_histogram(binwidth = 200)

#density plots can be used to visualize numerical data
ggplot(penguins, aes(x = body_mass_g))+
  geom_density()

  