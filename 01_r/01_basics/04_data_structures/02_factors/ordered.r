# Unordered factor
gender <- factor(c("Male", "Female", "Male"))
print(gender)

# Ordered factor
grades <- factor(c("Low", "High", "Medium", "Low"),
                 levels = c("Low", "Medium", "High"),
                 ordered = TRUE)
print(grades)