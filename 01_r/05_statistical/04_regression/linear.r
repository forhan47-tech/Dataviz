# Linear Regression
students <- data.frame(
  score   = c(85, 90, 78, 95, 88),
  hours   = c(5, 6, 4, 7, 6)
)

model <- lm(score ~ hours, data = students)
summary(model)