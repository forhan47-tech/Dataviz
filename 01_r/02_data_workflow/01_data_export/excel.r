# Requires: install.packages("writexl")
library(writexl)

# Create a sample data frame
students <- data.frame(
  name   = c("A", "B", "C"),
  score  = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Export to Excel file
write_xlsx(students, "students.xlsx")