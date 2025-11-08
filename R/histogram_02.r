# ─────────────────────────────────────────────────────────────
# 📊 ggplot2 Histogram Diagnostic Script (Updated for ggplot2 3.4.0)
# Author: NAIMUDDIN
# Purpose: Visualize MPG distribution with manifest logging and bin diagnostics
# ─────────────────────────────────────────────────────────────

library(ggplot2)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(
    binwidth = 1,                            # Bin width only
    fill     = "steelblue",                  # Fill color
    color    = "black",                      # Border color
    boundary = 0                             # Bin boundary alignment
  ) +
  geom_density(
    aes(y = after_stat(count)),   # Scale density to match histogram counts
    color = "red",                           # Density curve color
    linewidth = 1.2                          # Updated line width
  ) +
  geom_text(
    stat   = "bin",                          # Bin-wise annotation
    aes(label = after_stat(count)),          # Updated syntax
    vjust  = -0.5,                           # Position above bars
    size   = 3,                              # Text size
    color  = "darkgray"                      # Text color
  ) +
  labs(
    title    = "MPG Distribution",
    subtitle = "Data: mtcars dataset",
    x        = "Miles per Gallon",
    y        = "Frequency",
    caption  = "Histogram with bin diagnostics"
  ) +
  theme_minimal()
