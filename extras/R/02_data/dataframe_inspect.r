# Basic R Script: Data Frames
df <- data.frame(
  id = c(101, 102, 103),
  name = c("A", "B", "C"),
  score = c(90.5, 85.0, 88.2),
  passed = c(TRUE, TRUE, FALSE)
)

# Display first and last rows
head(df)        # First few rows
head(df, 2)     # First 2 rows
tail(df)        # Last few rows
tail(df, 2)     # Last 2 rows

# Data frame structure and summary
str(df)         # Structure
summary(df)     # Summary stats
nrow(df)        # Row count
ncol(df)        # Column count
dim(df)         # Dimensions

# Column and row names
names(df)       # Column names
rownames(df)    # Row names