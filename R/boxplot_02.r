# ─────────────────────────────────────────────────────────────
# 📦 ggplot2 Single Boxplot Diagnostic Script (mtcars)
# Author: NAIMUDDIN
# Purpose: Visualize MPG distribution using ggplot2
# ─────────────────────────────────────────────────────────────

# Load ggplot2 library
library(ggplot2)

# Step 1: Generate boxplot for MPG
ggplot(mtcars, aes(x = "", y = mpg)) +
  geom_boxplot(
    fill     = "orange",     # Box fill color
    color    = "black",      # Border color
    notch    = FALSE,        # No notch
    outlier.colour = "red",  # Outlier color
    outlier.shape  = 16,     # Outlier point shape
  ) +
  labs(
    title    = "Boxplot of MPG",
    subtitle = "Data: mtcars dataset",
    x        = NULL,
    y        = "Miles per Gallon",
    caption  = "Single-variable boxplot using ggplot2"
  ) +
  theme_minimal()
