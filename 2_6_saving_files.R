library(ggplot2)
library(palmerpenguins)

#save the most recent plot made using ggsave()
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species, shape = species))+
  facet_wrap(~island)
ggsave(filename = "2_6_penguins_filesave_example2.png")
