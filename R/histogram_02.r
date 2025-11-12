# ─────────────────────────────────────────────────────────────
# 📊 ggplot2 Histogram Diagnostic Script (Updated for ggplot2 3.4.0)
# Author: NAIMUDDIN
# Purpose: Visualize MPG distribution with manifest logging and bin diagnostics
# ─────────────────────────────────────────────────────────────

library(ggplot2)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(
    bins    = 20,                              # Number of bins
    fill     = "steelblue",                  # Fill color
    color    = "black"                       # Border color
  ) +
  labs(
    title    = "MPG Distribution",
    subtitle = "Data: mtcars dataset",
    x        = "Miles per Gallon",
    y        = "Density",
    caption  = "Histogram with bin diagnostics"
  ) +
  theme_minimal()
