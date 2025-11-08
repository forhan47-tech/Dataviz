# Basic R Script: Excel File Operations
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Write the data frame to an Excel file
library(openxlsx)
write.xlsx(df, "data.xlsx", sheetName = "AuditLog", rowNames = FALSE)

# Read the Excel file back into a data frame
df <- read.xlsx("data.xlsx", sheet = "AuditLog")
print(df)
