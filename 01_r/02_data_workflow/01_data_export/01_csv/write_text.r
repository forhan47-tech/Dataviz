# Export to Text File
students <- data.frame(
  name   = c("A", "B", "C"),
  score  = c(85, 90, 78)
)

# Write table with tab separator
write.table(students, "students.txt", sep = "\t", row.names = FALSE)