# ─────────────────────────────────────────────────────────────
# 📈 Base R Curve Plot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize a mathematical function using curve()
# ─────────────────────────────────────────────────────────────

# Step 1: Plot a simple quadratic curve y = x^2
curve(x^2,                       # Function to plot
  from   = -10,                  # Start of x range
  to     = 10,                   # End of x range
  col    = "blue",             # Line color
  lwd    = 2,                    # Line width
  xlab   = "x",                  # X-axis label
  ylab   = "y",            # Y-axis label
  main   = "Quadratic Curve y = x^2", # Plot title
  sub    = "Generated using curve() in Base R" # Subtitle
)