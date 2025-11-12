# ─────────────────────────────────────────────────────────────
# 📈 Base R Density Plot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG distribution using density plot
# ─────────────────────────────────────────────────────────────

# Step 1: Generate density object
df <- density(mtcars$mpg)   # Kernel density estimate of Miles per Gallon

# Step 2: Plot density curve
plot(df,                                    # Density object
  main  = "Density Plot of MPG",            # Plot title
  sub   = "Data Source: mtcars dataset",    # Subtitle
  xlab  = "Miles per Gallon",               # X-axis label
  ylab  = "Density",                        # Y-axis label
  col   = "blue",                         # Line color
  lwd   = 2                                 # Line width
)

# Step 3: Fill area under curve (optional for clarity)
polygon(df,                               # Density object
  col    = rgb(0, 0, 1, 0.2),             # Semi-transparent fill
  border = "blue"                       # Border color
)