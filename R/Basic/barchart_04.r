# ─────────────────────────────────────────────────────────────
# 🔁 ggplot2 Grouped Bar Plot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Compare cylinder and gear counts using ggplot2
# ─────────────────────────────────────────────────────────────

# Load ggplot2 library
library(ggplot2)

# Step 1: Generate grouped bar plot
ggplot(mtcars, aes(x = factor(cyl), fill = factor(gear))) +
  geom_bar(
    position = "dodge",       # Grouped bars side-by-side
    color    = "black",       # Border color
    width    = 0.7            # Bar width
  ) +
  labs(
    title    = "Cylinder vs Gear Count",                          # Plot title
    subtitle = "Grouped by Gear | Data: mtcars dataset",          # Subtitle
    x        = "Cylinders",                                       # X-axis label
    y        = "Frequency",                                       # Y-axis label
    fill     = "Gear",                                            # Legend title
    caption  = "Grouped barplot using position_dodge"             # Caption
  ) +
  theme_minimal()                                                # Minimal theme
