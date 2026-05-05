# Step 1: Create frequency table of cylinder counts
cyl_counts <- table(mtcars$cyl)

# Step 2: Generate barplot with full parameterization
barplot(cyl_counts,                      # Heights of bars
  names.arg  = names(cyl_counts),        # Bar labels (unique cylinder values)
  main       = "Car Count by Cylinder",                  # Main title
  sub        = "Data Source: mtcars dataset",            # Subtitle
  xlab       = "Number of Cylinders",                    # X-axis label
  ylab       = "Frequency",                              # Y-axis label
  col        = c("orange", "lightblue", "lightgreen"),   # Fill colors for bars
  border     = "black",                 # Border color for bars
  horiz      = FALSE                      # Orientation: vertical bars
)
