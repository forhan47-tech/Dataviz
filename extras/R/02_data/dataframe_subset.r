# Basic R Script: Data Frames
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Subset
subset(df, score > 86)

# Table
table(df$passed)