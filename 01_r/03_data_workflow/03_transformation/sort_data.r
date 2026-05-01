# Sorting Data Demo
library(dplyr)

# Sample data frame
students <- data.frame(
  name   = c("A", "B", "C", "D"),
  score  = c(85, 90, 78, 95),
  passed = c(TRUE, TRUE, FALSE, TRUE)
)

# Sort by score ascending
asc_sorted <- arrange(students, score)
print(asc_sorted)

# Sort by score descending
desc_sorted <- arrange(students, desc(score))
print(desc_sorted)

# Sort by passed status, then score ascending
multi_sorted <- arrange(students, passed, score)
print(multi_sorted)