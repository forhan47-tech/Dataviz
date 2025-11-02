# ─────────────────────────────────────────────────────────────
# 🥧 Base R Pie Chart Diagnostic Script (mtcars)
# Author: NAIMUDDIN
# Purpose: Visualize car distribution by cylinder
# ─────────────────────────────────────────────────────────────

# Step 1: Create frequency table of cylinder counts
cyl_freq <- table(mtcars$cyl)

# Step 2: Generate pie chart
pie(cyl_freq,                                          # Data vector
  labels   = names(cyl_freq),                          # Slice labels
  main     = "Car Distribution by Cylinder",           # Plot title
  col      = c("orange", "lightblue", "lightgreen"),   # Slice colors
  border   = "black",                                  # Border color
  density  = NULL,                                     # No shading
  radius   = 1,                                        # Pie radius
  cex      = 1                                         # Label size
)
