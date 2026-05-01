# Data Frame Filtering
df <- data.frame(
  name = c("A", "B", "C"),
  score = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Filter rows where passed == TRUE
print(df[df$passed == TRUE, ])

# Filter rows with score > 80
print(subset(df, score > 80))