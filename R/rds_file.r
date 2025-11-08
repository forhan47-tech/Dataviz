# Basic R Script: RDS File Operations
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Save the data frame to an RDS file
saveRDS(df, "data.rds")

# Read the RDS file back into a data frame
df <- readRDS("data.rds")
print(df)
