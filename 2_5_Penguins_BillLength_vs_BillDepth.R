library(ggplot2)
library(palmerpenguins)#can be done by checking them in the packages tab
ggplot(data = penguins, mapping = aes(x = bill_length_mm,
                                       y = bill_depth_mm))+
  geom_point(na.rm = TRUE, mapping = aes(color = species))+
  geom_smooth(method = "lm")+
  labs(title = "Bill Length vs Bill Depth by Species",
       subtitle = "Comparison of Adelle, Chinstrap, Gentoo Penguins",
       x = "Bill Length (mm)", y = "Bill Depth (mm)", 
       caption = "caption")

        