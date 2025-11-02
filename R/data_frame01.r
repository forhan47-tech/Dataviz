# Create a data frame
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Modify data frame
df$score[2] <- 87.5
df$grade <- c("A", "B", "B")
df[2, 3] <- 89.0

# Print data frame
print(df)
print(df$grade[1])
