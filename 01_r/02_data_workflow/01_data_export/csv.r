# Create a sample data frame
students <- data.frame(
  name   = c("A", "B", "C"),
  score  = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Export to CSV (without row names)
write.csv(students, "students.csv", row.names = FALSE)