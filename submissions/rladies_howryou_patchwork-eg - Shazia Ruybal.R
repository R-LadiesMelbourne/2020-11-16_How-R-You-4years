#install.packages(c("tidyverse", "patchwork, palmerpenguins", "devtools"))
#devtools::install_github("bahlolab/ggwehi")
library(tidyverse)
library(patchwork)
library(ggwehi)
library(palmerpenguins)

plot_1 <- penguins %>%
  ggplot(aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    geom_point() +
    scale_color_wehi() +
    labs(x = "Flipper length (mm)",
         y = "Body mass (g)",
         color = "Penguin species") +
    theme_minimal()

plot_2 <- penguins %>% 
  ggplot(aes(x = flipper_length_mm, fill = species)) +
    geom_histogram(alpha = 0.5, position = "identity") +
    scale_fill_wehi() +
    labs(x = "Flipper length (mm)",
         y = "Frequency",
         fill = "Penguin species") +
    theme_minimal()

plot_1 + plot_2 + 
  plot_layout(guides = "collect") + # this "collects" the legends to the right of the plot
  plot_annotation(tag_levels = "a", tag_suffix = ")") # this adds panel labels