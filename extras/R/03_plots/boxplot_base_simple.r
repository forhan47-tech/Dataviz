# Step 1: Generate boxplot for MPG
boxplot(mtcars$mpg,                           # Data: Miles per Gallon
  main      = "Boxplot of MPG",               # Plot title
  sub       = "Data: mtcars dataset",         # Subtitle
  ylab      = "Miles per Gallon",             # Y-axis label
  col       = "orange",                     # Box fill color
  border    = "black",                      # Border color
  notch     = FALSE,                          # No notch
  outline   = TRUE,                           # Show outliers
  horiz     = FALSE                           # Vertical orientation
)
