# ─────────────────────────────────────────────────────────────
# 📊 Base R Histogram Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG distribution with diagnostics
# ─────────────────────────────────────────────────────────────

# Step 1: Generate histogram and capture diagnostics
hist(mtcars$mpg,                         # Data: Miles per Gallon
  breaks   = 20,                              # Number of bins
  main     = "MPG Distribution",              # Plot title
  sub      = "Data: mtcars dataset",          # Subtitle
  xlab     = "Miles per Gallon",              # X-axis label
  ylab     = "Frequency",                     # Y-axis label
  col      = "lightblue",                   # Fill color
  border   = "black",                       # Border color
  freq     = TRUE                            # Frequency counts
)