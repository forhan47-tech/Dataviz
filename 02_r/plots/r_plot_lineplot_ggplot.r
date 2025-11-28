# Load ggplot2 library
library(ggplot2)

# Step 1: Add index for plotting
mtcars$car_index <- seq_along(mtcars$mpg)  # Sequence from 1 to number of cars

# Step 2: Generate line chart with point and label diagnostics
ggplot(mtcars, aes(x = car_index, y = mpg)) +
  geom_line(
    color     = "steelblue",                      # Line color
    linewidth       = 1.5                           # Line width
  ) +
  geom_point(
    color = "darkorange",                         # Point color
    size  = 2,                                      # Point size
    shape = 16                                      # Solid circle
  ) +
  geom_text(
    aes(label = rownames(mtcars)),                # Car names as labels
    vjust = -0.8,                                 # Vertical offset
    size  = 3,                                    # Text size
    color = "gray30"                            # Label color
  ) +
  labs(
    title    = "MPG Trend Across Cars",           # Plot title
    subtitle = "Data: mtcars dataset",            # Subtitle
    x        = "Car Index",                       # X-axis label
    y        = "Miles per Gallon",                # Y-axis label
    caption  = "Line chart with point and label diagnostics" # Caption
  ) +
  theme_minimal()                                 # Minimal theme
