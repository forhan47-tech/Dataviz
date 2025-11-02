# Create a sample data frame
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Load writexl and write the data frame to an Excel file
library(writexl)
write_xlsx(df, "data.xlsx")

# Load readxl and read the Excel file back into a data frame
library(readxl)
df <- read_xlsx("data.xlsx", sheet = 1)
print(df)