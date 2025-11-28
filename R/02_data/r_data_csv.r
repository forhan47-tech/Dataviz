# Basic R Script: CSV File Operations
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Write the data frame to a CSV file
write.csv(df, "data.csv", row.names = FALSE)

# Read the CSV file back into a data frame
df <- read.csv("data.csv", header = TRUE, stringsAsFactors = FALSE)
print(df)

# Read a CSV file from a URL
url_csv <- "https://example.com/data.csv"
df_csv <- read.csv(url_csv, header = TRUE, stringsAsFactors = FALSE)
print(df_csv)
