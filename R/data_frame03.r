# Create a data frame
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Summary of the data frame
head(df)        # First few rows
head(df, 2)     # First 2 rows
tail(df)        # Last few rows
tail(df, 2)     # Last 2 rows
str(df)         # Structure
summary(df)     # Summary stats
nrow(df)        # Row count
ncol(df)        # Column count
dim(df)         # Dimensions
names(df)       # Column names
colnames(df)    # Column names
rownames(df)    # Row names
subset(df, score > 86)  # Subset rows where score > 86
table(df$passed)  # Frequency table of 'passed' column