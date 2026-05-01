# Requires: install.packages("DBI"); install.packages("ROracle")

library(DBI)

# Connect to Oracle Database
con <- dbConnect(
  drv = ROracle::Oracle(),
  username = "forhan",
  password = "Forhan47s",
  dbname   = "localhost:1521/FREEPDB1"
)

# Query data from the 'students' table
result <- dbGetQuery(con, "SELECT * FROM students")

print(result)

# Disconnect
dbDisconnect(con)