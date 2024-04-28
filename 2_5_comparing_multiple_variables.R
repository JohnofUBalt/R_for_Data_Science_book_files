library(ggplot2)
library(palmerpenguins)

#COMPARING CATEGORICAL AND NUMERICAL VARIABLES

#boxplot of penguins body mass by species
ggplot(penguins, aes(x = species, y = body_mass_g))+
  geom_boxplot()

#density plot of body mass by species
ggplot(penguins, aes(x = body_mass_g, color = species))+
  geom_density(linewidth = 0.75)

#a density plot with fill, and alpha (transparency) aesthetics
ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) + 
  geom_density(alpha = 0.5)

#COMPARING 2 CATEGORICAL VARIABLES

#seeing which species of penguin are on which island
ggplot(penguins, aes(x = island, fill = species))+
  geom_bar()

#make a relative frequency plot by adding an argument(?) to geom_bar
ggplot(penguins, aes(x = island, fill = species))+
  geom_bar(position = "fill")

#COMPARING TWO NUMERICAL VALUES

#scatter plots (geom_point()) are most often used
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point()

#COMPARING THREE OR MORE VARIABLES

#we can map more variables into additional aesthetics
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = island))

#FACETS

#use facet_wrap() to split your plot into subplots with one variable
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species, fill = species))+
  facet_wrap(~island)
