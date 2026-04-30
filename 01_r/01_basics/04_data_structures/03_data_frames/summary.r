# Data Frame Summary
df <- data.frame(
  name = c("A", "B", "C"),
  score = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Summary statistics
print(summary(df))

# Structure
str(df)

# Dimensions
print(dim(df))