# ─────────────────────────────────────────────────────────────
# 🌱 Base R Stem-and-Leaf Plot Diagnostic Script
# Author: NAIMUDDIN
# Purpose: Visualize MPG distribution using stem-and-leaf plot
# ─────────────────────────────────────────────────────────────

# Step 1: Generate stem-and-leaf plot for Miles per Gallon
stem(mtcars$mpg,                 # Data vector: Miles per Gallon
  scale = 1                      # Scale factor (controls detail level)
)