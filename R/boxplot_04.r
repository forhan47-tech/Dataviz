# ─────────────────────────────────────────────────────────────
# 📦 ggplot2 Boxplot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG by cylinder with manifest logging and outlier detection
# ─────────────────────────────────────────────────────────────

# Load ggplot2 library
library(ggplot2)

# Step 1: Generate boxplot with notches and outlier diagnostics
ggplot(data = mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_boxplot(
    notch           = TRUE,         # Show notch for median CI
    fill            = "orange",     # Box fill color
    color           = "darkblue",   # Border color
    outlier.colour  = "red",        # Outlier color
    outlier.shape   = 8,            # Outlier shape (asterisk)
    outlier.size    = 2.5,          # Outlier size
    coef            = 1.5           # Whisker length multiplier
  ) +
  labs(
    title    = "MPG by Cylinder",                           # Plot title
    subtitle = "Data: mtcars dataset",                      # Subtitle
    x        = "Cylinders",                                 # X-axis label
    y        = "Miles per Gallon",                          # Y-axis label
    caption  = "Boxplot with notches and outlier diagnostics" # Caption
  ) +
  theme_minimal()                                           # Minimal theme
