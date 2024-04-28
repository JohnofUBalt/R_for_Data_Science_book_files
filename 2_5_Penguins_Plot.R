library(ggplot2)
library(palmerpenguins)
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, 
                                      y = body_mass_g, 
                                     color = species))+
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm", mapping = aes(color = body_mass_g))+
  labs(title = "Body Mass Versus Flipper Length",
       subtitle = "Dimensions for Adele, Chinstrap, and Gentoo Penguins",
       x = "Flipper Length (mm)",
       y = "Body Mass (g)",
       color = "Species", shape = "Species")
