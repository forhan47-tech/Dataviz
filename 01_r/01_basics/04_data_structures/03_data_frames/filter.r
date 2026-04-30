# Data Frame Filtering
students <- data.frame(
  name = c("A", "B", "C"),
  score = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Filter rows where passed == TRUE
print(students[students$passed == TRUE, ])

# Filter rows with score > 80
print(subset(students, score > 80))