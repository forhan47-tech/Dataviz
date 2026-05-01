# Create a sample data frame
students <- data.frame(
  name   = c("A", "B", "C"),
  score  = c(85, 90, 78)
)

# Export to a tab-separated text file
write.table(students, "students.txt", sep = "\t", row.names = FALSE)