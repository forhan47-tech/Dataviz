# ─────────────────────────────────────────────────────────────
# 📊 ggplot2 Single Variable Bar Plot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize frequency of cylinders in mtcars
# ─────────────────────────────────────────────────────────────

# Load ggplot2 library
library(ggplot2)

# Step 1: Generate bar plot for one variable
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(
    fill  = "steelblue",     # Bar fill color
    color = "black",         # Border color
    width = 0.7              # Bar width
  ) +
  labs(
    title    = "Frequency of Cylinders",
    subtitle = "Single Variable Bar Plot | Data: mtcars dataset",
    x        = "Cylinders",
    y        = "Count",
    caption  = "Barplot using geom_bar with one variable"
  ) +
  theme_minimal()
