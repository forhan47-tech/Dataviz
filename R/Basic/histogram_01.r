# ─────────────────────────────────────────────────────────────
# 📊 Base R Histogram Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG distribution with diagnostics
# ─────────────────────────────────────────────────────────────

# Step 1: Generate histogram and capture diagnostics
h <- hist(mtcars$mpg,                      # Data: Miles per Gallon
  main     = "MPG Distribution",              # Plot title
  sub      = "Data: mtcars dataset",           # Subtitle
  xlab     = "Miles per Gallon",              # X-axis label
  ylab     = "Frequency",                     # Y-axis label
  xlim     = range(mtcars$mpg),               # X-axis limits
  ylim     = NULL,                            # Auto Y-axis limits
  breaks   = 10,                              # Number of bins
  col      = "lightblue",                     # Fill color
  border   = "black",                         # Border color
  labels   = TRUE,                            # Show bin counts
  density  = NULL                             # No shading pattern
)