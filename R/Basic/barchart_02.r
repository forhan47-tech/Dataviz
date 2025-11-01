# ─────────────────────────────────────────────────────────────
# 📊 Base R Grouped Barplot Diagnostic Script (mtcars)
# Author: NAIMUDDIN
# Purpose: Compare cylinder and gear counts using grouped barplot
# ─────────────────────────────────────────────────────────────

# Step 1: Create contingency table of cylinder vs gear
cyl_gear_table <- table(mtcars$cyl, mtcars$gear)

# Step 2: Generate grouped barplot
barplot(height      = cyl_gear_table,                    # Matrix of counts
  main        = "Grouped Barplot: Cylinders vs Gears",   # Plot title
  sub         = "Data: mtcars dataset",                  # Subtitle
  xlab        = "Gear Count",                            # X-axis label
  ylab        = "Frequency",                             # Y-axis label
  names.arg   = colnames(cyl_gear_table),                # Bar labels
  col         = c("orange", "lightblue", "lightgreen"),  # Bar colors
  border      = "black",                                 # Border color
  horiz       = FALSE,                                   # Vertical bars
  beside      = TRUE,                                    # Separate bars
  space       = 0.2,                                     # Space between bars
  width       = 1                                        # Bar width
)