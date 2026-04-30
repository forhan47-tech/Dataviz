# Export to CSV
students <- data.frame(
  name   = c("A", "B", "C"),
  score  = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Write to CSV
write.csv(students, "students.csv", row.names = FALSE)