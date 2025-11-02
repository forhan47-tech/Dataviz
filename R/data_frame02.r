# Create a data frame
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Accessing elements
print(df[2, ])          # Second row
print(df[, 3])          # Third column
print(df$id)            # 'id' column
print(df[df$score > 86, ])  # Filtered rows

print(df[1:2, 3])       # Rows 1–2, column 3
print(df[2, 1:2])       # Row 2, columns 1–2
print(df[1, 3])         # Row 1, column 3
print(df[, c(2, 4)])    # All rows, columns 2 and 4
print(df[c(1, 3), ])    # Rows 1 and 3
