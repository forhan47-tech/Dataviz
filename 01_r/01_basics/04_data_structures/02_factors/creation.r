# Create factor
gender <- factor(c("Male", "Female", "Male", "Female", "Male"))
print(gender)

# Show levels
print(levels(gender))   # list categories
print(nlevels(gender))  # number of categories