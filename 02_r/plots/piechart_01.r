# ─────────────────────────────────────────────────────────────
# 🥧 Base R Pie Chart Diagnostic Script (Counts + Percentages)
# Author: NAIMUDDIN
# Purpose: Visualize car count by cylinder with count + percentage labels
# ─────────────────────────────────────────────────────────────

# Step 1: Create frequency table of cylinder counts
cyl_counts <- table(mtcars$cyl)

# Step 2: Generate percentage values
pct <- round(100 * cyl_counts / sum(cyl_counts), 1)

# Step 3: Create combined labels (counts + percentages)
labels <- paste0(names(cyl_counts), " cyl: ",
                 cyl_counts, " cars (", pct, "%)")

# Step 4: Generate pie chart with combined labels
pie(cyl_counts,                                  # Data: counts of cylinders
  labels  = labels,                              # Labels
  main    = "Car Count by Cylinder",             # Plot title
  sub     = "Data Source: mtcars dataset",       # Subtitle
  col     = c("orange", "lightblue", "lightgreen"), # Slice colors
  border  = "black"                              # Border color for slices
)
