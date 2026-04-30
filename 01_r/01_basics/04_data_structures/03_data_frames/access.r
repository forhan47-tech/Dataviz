# Data Frame Access
students <- data.frame(
  name = c("A", "B", "C"),
  score = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Access column
print(students$name)

# Access row
print(students[2, ])   # second row

# Access specific cell
print(students[3, "score"])