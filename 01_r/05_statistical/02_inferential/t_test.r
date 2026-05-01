# Hypothesis Testing
group1 <- c(85, 90, 78, 95, 88)
group2 <- c(80, 82, 79, 85, 83)

t_result <- t.test(group1, group2)

print(t_result)