# ─────────────────────────────────────────────────────────────
# 📈 ggplot2 Scatter Plot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG vs Weight using ggplot2
# ─────────────────────────────────────────────────────────────

# Load ggplot2 library
library(ggplot2)

# Step 1: Generate scatter plot with regression and annotation
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point(
    color = mtcars$cyl, size = 3, shape = 16        # Data points
  ) +
  geom_smooth(
    method = "lm", se = FALSE, color = "red"    # Regression line
  ) +
  geom_text(
    aes(label = rownames(mtcars)),              # Car names
    hjust = 0.5, vjust = -1,                    # Positioning
    size = 3, color = "darkgray"                # Annotation style
  ) +
  labs(
    title    = "MPG vs Weight",                 # Plot title
    subtitle = "Data: mtcars dataset",          # Subtitle
    x        = "Weight (1000 lbs)",             # X-axis label
    y        = "Miles per Gallon",              # Y-axis label
    caption  = "Regression: mpg ~ wt"           # Caption
  ) +
  theme_minimal()                               # Minimal theme
