
# ─────────────────────────────────────────────────────────────
# 📦 Base R Boxplot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG by cylinder with manifest logging and outlier detection
# ─────────────────────────────────────────────────────────────

# Step 1: Vertical boxplot (standard)
boxplot(mpg ~ factor(cyl), data = mtcars,               # Source dataset
        main      = "MPG by Cylinder",                  # Plot title
        sub       = "Data: mtcars dataset",             # Subtitle
        xlab      = "Cylinders",                        # X-axis label
        ylab      = "Miles per Gallon",                 # Y-axis label
        col       = c("lightblue", "lightgreen", "lightpink"), # Fill colors
        border    = "darkblue",                         # Border color
        notch     = FALSE,                              # No notch
        varwidth  = TRUE,                               # Box width ∝ group size
        outline   = TRUE,                               # Show outliers
        names     = c("4 cyl", "6 cyl", "8 cyl"),       # Custom group labels
        horizontal = FALSE)                             # Vertical orientation
