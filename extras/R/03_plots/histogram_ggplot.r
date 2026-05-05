# Load ggplot2 library
library(ggplot2)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(
    bins = 20,                               # Number of bins
    aes(y = ..density..),                    # Map counts to density
    fill = "steelblue",                      # Fill color
    color = "black"                          # Border color
  ) +
  labs(
    title    = "MPG Distribution",           # Plot title
    subtitle = "Data: mtcars dataset",       # Subtitle
    x        = "Miles per Gallon",           # X-axis label
    y        = "Density",                    # Y-axis label
    caption  = "Histogram with density scaling" # Caption
  ) +
  theme_minimal()                            # Minimal theme for clarity
