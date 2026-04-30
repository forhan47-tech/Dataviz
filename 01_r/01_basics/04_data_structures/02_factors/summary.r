# Factor Summary
gender <- factor(c("Male", "Female", "Male", "Female", "Male"))
grades <- factor(c("Low", "High", "Medium", "Low"),
                 levels = c("Low", "Medium", "High"),
                 ordered = TRUE)

# Frequency count
print(table(gender))

# Summary distribution
print(summary(grades))