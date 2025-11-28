# ─────────────────────────────────────────────────────────────
# 📊 Base R Grouped Bar Plot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize counts of cylinders vs gears using grouped bars
# ─────────────────────────────────────────────────────────────

# Step 1: Create contingency table (cylinders × gears)
cyl_gear_table <- table(mtcars$cyl, mtcars$gear)

# Step 2: Generate grouped bar plot
barplot(cyl_gear_table,                     # Matrix of counts
  beside      = TRUE,                            # Grouped bars (side-by-side)
  main        = "Car Count by Cylinders and Gears", # Plot title
  sub         = "Data Source: mtcars dataset",      # Subtitle
  xlab        = "Gear Count",                       # X-axis label
  ylab        = "Frequency",                        # Y-axis label
  col         = mtcars$cyl,                # Colors for cylinder groups
  border      = "black",                            # Border color
)
