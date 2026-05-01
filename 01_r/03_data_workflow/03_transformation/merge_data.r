# Merging Data
library(dplyr)

# Sample data frames
students <- data.frame(
  id     = c(1, 2, 3),
  name   = c("A", "B", "C"),
  score  = c(85, 90, 78)
)

details <- data.frame(
  id     = c(1, 2, 4),
  age    = c(18, 19, 20),
  passed = c(TRUE, TRUE, FALSE)
)

# Inner join: only matching IDs
inner_joined <- inner_join(students, details, by = "id")
print(inner_joined)

# Left join: all students, add details if available
left_joined <- left_join(students, details, by = "id")
print(left_joined)

# Full join: all IDs from both tables
full_joined <- full_join(students, details, by = "id")
print(full_joined)