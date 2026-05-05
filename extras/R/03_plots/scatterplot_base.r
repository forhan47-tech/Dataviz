# Step 1: Generate scatter plot
plot(mtcars$wt, mtcars$mpg,
  main  = "MPG vs Weight",                    # Plot title
  sub   = "Data: mtcars dataset",             # Subtitle
  xlab  = "Weight (1000 lbs)",                # X-axis label
  ylab  = "Miles per Gallon",                 # Y-axis label
  col   = factor(mtcars$cyl),                 # Color by number of cylinders
  pch   = 19,                                 # Solid circle
  cex   = 1                                   # Point size
)

# Step 2: Fit and add regression line
model <- lm(mpg ~ wt, mtcars)
abline(model, col = "red", lwd = 2)           # Regression line

# Step 3: Annotate data points with car names
text(mtcars$wt, mtcars$mpg,
  labels  = rownames(mtcars),                 # Car names
  pos     = 4,                                # Right side of point
  cex     = 0.7,                              # Text size
  col     = "darkgreen"                     # Annotation color
)
