# ─────────────────────────────────────────────────────────────
# 🥧 ggplot2 Pie Chart Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize car count by cylinder using ggplot2
# ─────────────────────────────────────────────────────────────

# Step 0: Load ggplot2 library
library(ggplot2)

# Step 1: Create frequency table of cylinder counts
cyl_counts <- as.data.frame(table(mtcars$cyl))
colnames(cyl_counts) <- c("cyl", "count")

# Step 2: Generate pie chart
ggplot(cyl_counts, aes(x = "", y = count, fill = factor(cyl))) +
  geom_bar(
    stat   = "identity",   # Use actual counts
    color  = "black"       # Border color
  ) +
  coord_polar(theta = "y") +  # Convert bar chart to pie chart
  labs(
    title    = "Car Count by Cylinder",          # Plot title
    subtitle = "Data Source: mtcars dataset",    # Subtitle
    caption  = "Pie chart using ggplot2 (coord_polar)" # Caption
  ) +
  theme_minimal()                                # Minimal theme for clarity
