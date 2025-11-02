# ─────────────────────────────────────────────────────────────
# 📈 Base R Curve Plot Diagnostic
# Author: NAIMUDDIN
# Purpose: Visualize mathematical function y = x² over [-10, 10]
# ─────────────────────────────────────────────────────────────

# Plot the curve y = x² using base R
curve(expr = x^2,             # Mathematical expression to plot
  from = -10,             # Start of x-axis range
  to = 10,                # End of x-axis range
  add = FALSE,            # Do not add to existing plot
  col = "blue",           # Line color
  lwd = 2,                # Line width
  main = "y = x²",        # Main title
  sub = "Full parameter diagnostic",  # Subtitle
  xlab = "x",             # Label for x-axis
  ylab = "y"             # Label for y-axis
)