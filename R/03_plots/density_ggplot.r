# Step 0: Load ggplot2 library
library(ggplot2)

# Step 1: Generate density plot for Miles per Gallon (mpg)
ggplot(mtcars, aes(x = mpg)) +                # Variable: Miles per Gallon
  geom_density(
    fill   = "steelblue",                   # Fill color under curve
    color  = "darkblue",                    # Border line color
    lwd    = 1.2                              # Line width
  ) +
  labs(
    title    = "Density Plot of MPG",         # Plot title
    subtitle = "Data Source: mtcars dataset", # Subtitle
    x        = "Miles per Gallon",            # X-axis label
    y        = "Density",                     # Y-axis label
    caption  = "Density plot using geom_density in ggplot2" # Caption
  ) +
  theme_minimal()                             # Minimal theme for clarity
