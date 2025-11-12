# ─────────────────────────────────────────────────────────────
# 🥧 Base R Pie Chart Diagnostic Script (with Percentages)
# Author: NAIMUDDIN
# Purpose: Visualize car count by cylinder with percentage labels
# ─────────────────────────────────────────────────────────────

# Step 1: Create frequency table of cylinder counts
cyl_counts <- table(mtcars$cyl)

# Step 2: Generate percentage labels
pct <- round(100 * cyl_counts / sum(cyl_counts), 1)

# Step 3: Generate pie chart with percentage labels
pie(cyl_counts,                                  # Data: counts of cylinders
  labels  = paste(names(cyl_counts), pct, "%"),  #Label
  main    = "Car Count by Cylinder",             # Plot title
  sub     = "Data Source: mtcars dataset",       # Subtitle
  col     = c("orange", "lightblue", "lightgreen"), # Slice colors
  border  = "black"                              # Border color for slices
)
