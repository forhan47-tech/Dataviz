library(ggplot2)

# Sample dataset
students <- data.frame(
  section = c("X", "X", "Y", "Y", "X"),
  score   = c(85, 90, 78, 95, 88)
)

# Basic boxplot
ggplot(students, aes(x = section, y = score, fill = section)) +
  geom_boxplot() +
  labs(title = "Score Spread by Section", x = "Section", y = "Score")
