# Basic R Script: Data Manipulation
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Filtering rows using base R
filtered <- df[df$score > 86, ]
print(filtered)

# Filtering rows using dplyr
library(dplyr)
df |> filter(score > 85)

# Selecting columns using base R
selected <- df[, c("name", "score")]
print(selected)

# Selecting columns using dplyr
df |> select(name, score)
