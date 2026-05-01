# Grouping Data
library(dplyr)

# Sample data frame
students <- data.frame(
  name   = c("A", "B", "C", "D", "E"),
  score  = c(85, 90, 78, 95, 88),
  passed = c(TRUE, TRUE, FALSE, TRUE, TRUE),
  section = c("X", "X", "Y", "Y", "X")
)

# Group by section: average score per section
section_summary <- students |>
  group_by(section) |>
  summarise(mean_score = mean(score), .groups = "drop")

print(section_summary)

# Group by passed status: count of students
pass_summary <- students |>
  group_by(passed) |>
  summarise(count = n(), .groups = "drop")

print(pass_summary)

# Group by multiple columns: section + passed
multi_group <- students |>
  group_by(section, passed) |>
  summarise(mean_score = mean(score), count = n(), .groups = "drop")

print(multi_group)