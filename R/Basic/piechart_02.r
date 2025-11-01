# ─────────────────────────────────────────────────────────────
# 🥧 ggplot2 Pie Chart Diagnostic Script (Fully Parameterized)
# Author: NAIMUDDIN
# Purpose: Visualize category proportions with percentage labels
# ─────────────────────────────────────────────────────────────

# Load ggplot2 library for visualization
library(ggplot2)

# Step 1: Define category-value data frame
df <- data.frame(
  category = c("A", "B", "C", "D"),   # Category labels
  value    = c(25, 40, 27, 8)         # Corresponding values
)

# Step 2: Compute percentage labels for each category
df$percent <- paste0(
  round(df$value / sum(df$value) * 100), "%"
)

# Step 3: Generate pie chart with percentage diagnostics
ggplot(df, aes(x = "", y = value, fill = category)) +
  geom_bar(
    stat  = "identity",               # Use actual values
    width = 1,                        # Full pie width
    color = "black"                   # Border color for slices
  ) +
  coord_polar(
    theta     = "y",                  # Convert bar chart to pie chart
    start     = 0,                    # Start angle
    direction = -1                    # Clockwise rotation
  ) +
  geom_text(
    aes(label = percent),            # Display percentage labels
    position = position_stack(vjust = 0.5),  # Center labels in slices
    size     = 4,                    # Label font size
    color    = "white"               # Label color for contrast
  ) +
  labs(
    title    = "Pie Chart: Category Proportions",         # Main title
    subtitle = "Data: Custom category dataset",           # Subtitle
    fill     = "Category",                                # Legend title
    caption  = "Pie chart using coord_polar"              # Footer caption
  ) +
  theme_void()
