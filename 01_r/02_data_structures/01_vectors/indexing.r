# Create numeric vector
vec <- c(10, 20, 30, 40)

# Indexing
print(vec[1])        # first element
print(vec[2:3])      # slice
print(vec[-1])       # exclude first
print(vec[c(1, 4)])  # specific positions
print(vec[vec > 20]) # logical indexing