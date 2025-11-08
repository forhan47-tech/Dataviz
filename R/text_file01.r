# Basic R Script: Text File Operations
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Write the data frame to a text file
write.table(df, "data.txt", sep = "\t", row.names = FALSE, quote = FALSE)

# Read the text file back into a data frame
df <- read.table("data.txt", sep = "\t", header = TRUE)
print(df)

# Read a text file from a URL
url_txt <- "https://example.com/data.txt"
df_txt <- read.table(url_txt, sep = "\t", header = TRUE)
print(df_txt)
