# Requires: install.packages("DBI"); install.packages("ROracle")

library(DBI)

# Create a sample data frame
students <- data.frame(
  name   = c("A", "B", "C"),
  score  = c(85, 90, 78),
  passed = c(TRUE, TRUE, FALSE)
)

# Connect to Oracle Database
con <- dbConnect(
  drv = ROracle::Oracle(),
  username = "forhan",
  password = "Forhan47s",
  dbname   = "localhost:1521/FREEPDB1"
)

# Write data frame to Oracle table
dbWriteTable(con, "students", students, overwrite = TRUE)

# Disconnect
dbDisconnect(con)