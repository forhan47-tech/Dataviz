# Summarizing Data
library(dplyr)

# Sample data frame
students <- data.frame(
  name   = c("A", "B", "C", "D"),
  score  = c(85, 90, 78, 95),
  passed = c(TRUE, TRUE, FALSE, TRUE),
  age    = c(18, 19, 18, 20)
)

# Summarize: average score
avg_score <- summarise(students, mean_score = mean(score))

print(avg_score)

# Summarize: multiple statistics
summary_stats <- summarise(
  students,
  mean_score = mean(score),
  max_score  = max(score),
  min_score  = min(score),
  count      = n()
)

print(summary_stats)

# Grouped summary: average score by pass/fail
grouped_summary <- students |>
  group_by(passed) |>
  summarise(mean_score = mean(score), .groups = "drop")

print(grouped_summary)