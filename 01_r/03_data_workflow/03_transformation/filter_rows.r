# Filtering Rows
library(dplyr)

# Sample data frame
students <- data.frame(
  name   = c("A", "B", "C", "D"),
  score  = c(85, 90, 78, 95),
  passed = c(TRUE, TRUE, FALSE, TRUE)
)

# Filter: keep only students who passed
passed_students <- filter(students, passed == TRUE)

print(passed_students)

# Filter: keep only students with score >= 90
top_students <- filter(students, score >= 90)

print(top_students)