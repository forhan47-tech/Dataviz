# ─────────────────────────────────────────────────────────────
# 📊 ggplot2 Histogram Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG distribution with manifest logging and bin diagnostics
# ─────────────────────────────────────────────────────────────

# Load ggplot2 library
library(ggplot2)

# Step 1: Generate histogram with bin diagnostics
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(
    binwidth = 1,                             # Bin width
    fill     = "steelblue",                   # Fill color
    color    = "black",                       # Border color
    boundary = 0                              # Bin boundary alignment
  ) +
  geom_text(
    stat   = "bin",                           # Bin-wise annotation
    aes(label = after_stat(count)),           # Show count per bin
    vjust  = -0.5,                            # Position above bars
    size   = 3,                               # Text size
    color  = "darkgray"                       # Text color
  ) +
  labs(
    title    = "MPG Distribution",            # Plot title
    subtitle = "Data: mtcars dataset",        # Subtitle
    x        = "Miles per Gallon",            # X-axis label
    y        = "Frequency",                   # Y-axis label
    caption  = "Histogram with bin diagnostics" # Caption
  ) +
  theme_minimal()                             # Minimal theme
