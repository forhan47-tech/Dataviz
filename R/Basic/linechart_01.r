# ─────────────────────────────────────────────────────────────
# 📈 Base R Lineplot Diagnostic Script (mtcars)
# Author: NAIMUDDIN
# Purpose: Visualize MPG trend across cars
# ─────────────────────────────────────────────────────────────

# Step 1: Generate lineplot of MPG across car index
plot(seq_len(nrow(mtcars)), mtcars$mpg,      # X-axis: car index, Y-axis: MPG
  type  = "b",                               # Both lines and points
  main  = "MPG Trend Across Cars",           # Plot title
  sub   = "Data: mtcars dataset",            # Subtitle
  xlab  = "Car Index",                       # X-axis label
  ylab  = "Miles per Gallon",                # Y-axis label
  col   = "blue",                          # Line color
  lwd   = 2,                                 # Line width
  pch   = 19,                                # Point type (solid circle)
  cex   = 1.5,                               # Point size
  xlim  = c(1, nrow(mtcars)),                # X-axis limits
  ylim  = range(mtcars$mpg)                  # Y-axis limits
)

# Step 2: Annotate each point with car name
text(seq_len(nrow(mtcars)), mtcars$mpg,      # X-Y coordinates
  labels  = rownames(mtcars),                # Car names
  pos     = 3,                               # Above each point
  cex     = 0.7,                             # Text size
  col     = "darkgray"                     # Annotation color
)