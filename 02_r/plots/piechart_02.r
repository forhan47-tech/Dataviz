# ─────────────────────────────────────────────────────────────
# 🥧 ggplot2 Pie Chart Diagnostic Script (Counts + Percentages)
# Author: NAIMUDDIN
# Purpose: Visualize car count by cylinder with count + percentage labels
# ─────────────────────────────────────────────────────────────

# Step 0: Load ggplot2 library
library(ggplot2)

# Step 1: Create frequency table of cylinder counts
cyl_counts <- as.data.frame(table(mtcars$cyl))
names(cyl_counts) <- c("cyl", "count")

# Step 2: Add percentage column for labels
cyl_counts$percent <- round(100 * cyl_counts$count / sum(cyl_counts$count), 1)

# Step 3: Create combined label (count + percentage)
cyl_counts$label <- paste0(cyl_counts$cyl, " cyl: ",
                           cyl_counts$count, " cars (",
                           cyl_counts$percent, "%)")

# Step 4: Generate pie chart with labels
ggplot(cyl_counts, aes(x = "", y = count, fill = factor(cyl))) +
  geom_bar(
    stat   = "identity",   # Use actual counts
    color  = "black"       # Border color
  ) +
  coord_polar(theta = "y") +  # Convert stacked bar chart to pie chart
  geom_text(
    aes(label = label),                   # Combined labels
    position = position_stack(vjust = 0.5), # Center labels in slices
    color    = "white",                   # Label color
    size     = 3.5                         # Label size
  ) +
  labs(
    title    = "Car Count by Cylinder",         # Plot title
    subtitle = "Data Source: mtcars dataset",   # Subtitle
    fill     = "Cylinders",                     # Legend title
    caption  = "Pie chart with counts + percentages using ggplot2" # Caption
  ) +
  theme_minimal()                               # Minimal theme for clarity
