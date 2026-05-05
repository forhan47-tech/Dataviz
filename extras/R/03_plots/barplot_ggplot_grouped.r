# Step 0: Load ggplot2 library
library(ggplot2)

# Step 1: Create grouped bar plot (cylinders vs gears)
ggplot(mtcars, aes(x = factor(gear), fill = factor(cyl))) +
  geom_bar(
    position = "dodge",                          # Side-by-side (grouped) bars
    color    = "black"                           # Border color
  ) +
  labs(
    title    = "Car Count by Gears and Cylinders", # Plot title
    subtitle = "Data Source: mtcars dataset",      # Subtitle
    x        = "Number of Gears",                  # X-axis label
    y        = "Count",                            # Y-axis label
    caption  = "Grouped bar plot using geom_bar"   # Caption
  ) +
  theme_minimal()                                  # Minimal theme for clarity
