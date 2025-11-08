# Step 1: Define category-value data frame
df <- data.frame(
  category = c("A", "B", "C", "D"),   # Category labels
  value    = c(25, 40, 27, 8)         # Corresponding values
)

# Step 2: Compute percentage labels for each category
df$percent <- round(df$value / sum(df$value) * 100)

# Step 3: Generate pie chart with percentage diagnostics
pie(
  df$value,                                      # Data vector
  labels = df$percent,                           # Percentage labels
  main   = "Pie Chart: Category Proportions",    # Plot title
  sub   = "Data: Custom category dataset",      # Subtitle
  col    = c("orange", "lightblue", "lightgreen", "pink"),  # Slice colors
  border = "black",                              # Border color
  density = NULL,                                 # No shading
  cex     = 1                                    # Label size
)