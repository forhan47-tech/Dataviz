# ─────────────────────────────────────────────────────────────
# 📦 Base R Boxplot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG by cylinder with manifest logging and outlier detection
# ─────────────────────────────────────────────────────────────

# Step 1: Vertical boxplot (standard)
boxplot(mpg ~ cyl,                                 # MPG grouped by cylinder
  data      = mtcars,                                    # Source dataset
  main      = "MPG by Cylinder",                         # Plot title
  sub       = "Data: mtcars dataset",                    # Subtitle
  xlab      = "Cylinders",                               # X-axis label
  ylab      = "Miles per Gallon",                        # Y-axis label
  col       = c("lightblue", "lightgreen", "lightpink"), # Fill colors
  border    = "darkblue",                                # Border color
  varwidth  = TRUE,                                 # Box width ∝ group size
  outline   = TRUE,                                      # Show outliers
  names     = c("4 cyl", "6 cyl", "8 cyl")               # Custom group labels
)

# Step 2: Horizontal notched boxplot
boxplot(mpg ~ cyl,                                 # MPG grouped by cylinder
  data       = mtcars,                                    # Source dataset
  main       = "MPG by Cylinder (Horizontal Notched)",    # Plot title
  sub        = "Data: mtcars dataset",                    # Subtitle
  xlab       = "Miles per Gallon",                        # X-axis label
  ylab       = "Cylinders",                               # Y-axis label
  col        = c("lightyellow", "lightgray", "lightgreen"), # Fill colors
  border     = "darkred",                                 # Border color
  notch      = TRUE,                                # Show notches for median CI
  varwidth   = TRUE,                                # Box width ∝ group size
  outline    = TRUE,                                      # Show outliers
  names      = c("4 cyl", "6 cyl", "8 cyl"),              # Custom group labels
  horizontal = TRUE                                 # Horizontal orientation
)
