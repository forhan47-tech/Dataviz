library(ggplot2)

# Sample dataset
students <- data.frame(
  section = c("X", "X", "Y", "Y", "X"),
  score   = c(85, 90, 78, 95, 88)
)

# Basic bar chart
ggplot(students, aes(x = section, y = score, fill = section)) +
  geom_bar(stat = "identity") +
  labs(title = "Scores by Section", x = "Section", y = "Score")
