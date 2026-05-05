# Step 0: Define car index
car_index <- seq_along(mtcars$mpg)  # Sequence from 1 to number of cars

# Step 1: Generate lineplot of MPG across car index
plot(car_index, mtcars$mpg,         # X-axis: car index, Y-axis: MPG
  type  = "o",                      # Line and points
  main  = "MPG Trend Across Cars",  # Plot title
  sub   = "Data: mtcars dataset",   # Subtitle
  xlab  = "Car Index",              # X-axis label
  ylab  = "Miles per Gallon",       # Y-axis label
  col   = "blue",                 # Line color
  lwd   = 2,                        # Line width
  pch   = 19                        # Point Shape
)

# Step 2: Annotate each point with car name
text(car_index, mtcars$mpg,         # X-Y coordinates
  labels  = rownames(mtcars),       # Car names
  pos     = 3,                      # Above each point
  cex     = 0.6,                    # Label size
  col     = "darkgray"            # Annotation color
)