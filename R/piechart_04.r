# ─────────────────────────────────────────────────────────────
# 🥧 ggplot2 Pie Chart Diagnostic Script (with Labels)
# Author: NAIMUDDIN
# Purpose: Visualize car count by cylinder with percentage labels
# ─────────────────────────────────────────────────────────────

# Step 0: Load ggplot2 library
library(ggplot2)

# Step 1: Create frequency table of cylinder counts
cyl_counts <- as.data.frame(table(mtcars$cyl))
colnames(cyl_counts) <- c("cyl", "count")

# Step 2: Add percentage column for labels
cyl_counts$percent <- round(100 * cyl_counts$count / sum(cyl_counts$count), 1)

# Step 3: Generate pie chart with labels
ggplot(cyl_counts, aes(x = "", y = count, fill = factor(cyl))) +
  geom_bar(
    stat   = "identity",   # Use actual counts
    width  = 1,            # Full circle
    color  = "black"       # Border color
  ) +
  coord_polar(theta = "y") +  # Convert stacked bar chart to pie chart
  geom_text(
    aes(label = paste(percent, "%")),          # Percentage labels
    position = position_stack(vjust = 0.5),     # Center labels in slices
    color    = "white",                         # Label color
    size     = 4                                # Label size
  ) +
  labs(
    title    = "Car Count by Cylinder",         # Plot title
    subtitle = "Data Source: mtcars dataset",   # Subtitle
    fill     = "Cylinders",                     # Legend title
    caption  = "Pie chart with percentage labels using ggplot2" # Caption
  ) +
  theme_minimal()                               # Minimal theme for clarity
