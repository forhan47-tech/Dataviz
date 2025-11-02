# Create a sample data frame
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Sorting rows by score in ascending order using base R
df <- df[order(df$score), ]
print(df)

# Sorting rows by score in ascending order using dplyr
library(dplyr)
df |> arrange(score)

# Sorting rows by score in descending order using base R
df <- df[order(-df$score), ]
print(df)

# Sorting rows by score in descending order using dplyr
df |> arrange(desc(score))
