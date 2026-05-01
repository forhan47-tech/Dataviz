# Reshaping Data
library(tidyr)

# Sample wide-format data
scores <- data.frame(
  student = c("A", "B"),
  math    = c(85, 90),
  science = c(78, 88)
)

# Convert wide → long format
long <- pivot_longer(
  scores,
  cols = c(math, science),
  names_to = "subject",
  values_to = "score"
)

print(long)

# Convert long → wide format
wide <- pivot_wider(
  long,
  names_from = subject,
  values_from = score
)

print(wide)