# Data Frame Access
df <- data.frame(
  name = c("A", "B", "C"),
  score = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Access column
print(df$name)

# Access row
print(df[2, ])

# Access specific cell
print(df[3, "score"])

# Rows 1-2, column "name"
print(df[1:2, "name"])

# All rows, columns "name" and "score"
print(df[, c("name", "score")])