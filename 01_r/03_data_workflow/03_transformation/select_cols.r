# Selecting Columns
library(dplyr)

# Sample data frame
students <- data.frame(
  name   = c("A", "B", "C", "D"),
  score  = c(85, 90, 78, 95),
  passed = c(TRUE, TRUE, FALSE, TRUE),
  age    = c(18, 19, 18, 20)
)

# Select only name and score
selected <- select(students, name, score)

print(selected)

# Select all except 'age'
no_age <- select(students, -age)

print(no_age)

# Select columns by range (from name to score)
range_select <- select(students, name:score)

print(range_select)