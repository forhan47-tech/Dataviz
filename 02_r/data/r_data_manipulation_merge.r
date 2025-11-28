# Basic R Script: Data Manipulation

# First data frame
df1 <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Second data frame
df2 <- data.frame(
  id = c(102, 103, 104),
  age = c(23, 25, 22)
)

# Merging data frames on 'id' column using base R
merged <- merge(df1, df2, by = "id", all = TRUE)
print(merged)

# Merging data frames using dplyr
library(dplyr)
df1 |> full_join(df2, by = "id")
