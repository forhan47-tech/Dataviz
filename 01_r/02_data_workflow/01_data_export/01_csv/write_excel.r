# Export to Excel
library(writexl)

students <- data.frame(
  name   = c("A", "B", "C"),
  score  = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Write to Excel file
write_xlsx(students, "students.xlsx")