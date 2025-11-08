# ─────────────────────────────────────────────────────────────
# 📊 Base R Barplot Diagnostic Script (Fully Parameterized)
# Author: NAIMUDDIN
# Purpose: Visualize car count by cylinder using barplot
# ─────────────────────────────────────────────────────────────

# Step 1: Create table of cylinder counts
cyl_counts <- table(mtcars$cyl)

# Step 2: Generate barplot
barplot(height = cyl_counts,                             # Heights of bars
  main       = "Car Count by Cylinder",                  # Main title
  sub        = "Data: mtcars dataset",                   # Subtitle
  xlab       = "Number of Cylinders",                    # X-axis label
  ylab       = "Frequency",                              # Y-axis label
  names.arg  = names(cyl_counts),                      # Bar labels
  col        = c("orange", "lightblue", "lightgreen"),   # Bar colors
  border     = "black",                                  # Border color
  horiz      = FALSE,                                    # Vertical bars
  beside     = TRUE,                                     # Separate bars
  width      = 1,                                        # Bar width
  space      = 0.2                                       # Space between bars
)