# Requires: install.packages("readxl")

library(readxl)

# Read Excel file
data <- read_excel("students.xlsx")

# Print the imported data
print(data)