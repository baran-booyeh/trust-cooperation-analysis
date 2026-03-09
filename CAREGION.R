library(FactoMineR)
library(factoextra)
library(readxl)
library(ggplot2)

# 2?????? Load & Inspect Datasets
file_italy <- "C:/Users/BARAN/Desktop/Thesis/Data Sets/ITALY/number_region2.xlsx"
file_iran  <- "C:/Users/BARAN/Desktop/Thesis/Data Sets/IRAN/Region_Iran2.xlsx"

# Load Excel files
df_italy <- read_excel(file_italy)
df_iran  <- read_excel(file_iran)

# Convert to a dataframe (since readxl returns a tibble)
df_italy <- as.data.frame(df_italy)
df_iran  <- as.data.frame(df_iran)

# 3?????? Prepare Contingency Tables (Remove "TOTAL" & Set Row Names)
# ----- ITALY -----
df_italy_ct <- df_italy[, !(colnames(df_italy) %in% c("TOTAL"))]  # Remove 'TOTAL' column
rownames(df_italy_ct) <- df_italy[,1]  # Set first column (Region names) as row names
df_italy_ct <- df_italy_ct[,-1]  # Remove first column (Region names) from data

# Normalize: Convert to row profiles (Each row sums to 1)
df_italy_ct <- df_italy_ct / rowSums(df_italy_ct)

# ----- IRAN -----
df_iran_ct <- df_iran[, !(colnames(df_iran) %in% c("TOTAL"))]  # Remove 'TOTAL' column
rownames(df_iran_ct) <- df_iran[,1]  # Set first column (Region names) as row names
df_iran_ct <- df_iran_ct[,-1]  # Remove first column (Region names) from data

# Normalize: Convert to row profiles (Each row sums to 1)
df_iran_ct <- df_iran_ct / rowSums(df_iran_ct)

# 4?????? Perform Correspondence Analysis (CA)
ca_italy <- CA(df_italy_ct, graph = FALSE)
ca_iran  <- CA(df_iran_ct, graph = FALSE)

# Show Summary Results
print("Summary of CA for Italy:")
summary(ca_italy)

print("Summary of CA for Iran:")
summary(ca_iran)

# 5?????? Visualize Correspondence Maps
# Italy CA Biplot
fviz_ca_biplot(ca_italy, repel = TRUE, max.overlaps = 100,
               title = "Correspondence Analysis - Trust in Italy",
               col.row = "blue", col.col = "red") +
  theme_minimal()

fviz_contrib(ca_italy, choice = "col", axes = 1, title = "Italy - Trust Category Contribution (Dim1)")
fviz_contrib(ca_italy, choice = "col", axes = 2, title = "Italy - Trust Category Contribution (Dim2)")

# Iran CA Biplot
fviz_ca_biplot(ca_iran, repel = TRUE, max.overlaps = 100,
               title = "Correspondence Analysis - Trust in Iran",
               col.row = "blue", col.col = "red") +
  theme_minimal()
fviz_contrib(ca_iran, choice = "col", axes = 1, title = "Iran - Trust Category Contribution (Dim1)")
fviz_contrib(ca_iran, choice = "col", axes = 2, title = "Iran - Trust Category Contribution (Dim2)")

# 6?????? Individual Contributions (Regions & Trust Categories)
# Regions' Contribution - Italy
fviz_ca_row(ca_italy, col.row = "blue", title = "Region Contribution - Italy")

# Trust Categories' Contribution - Italy
fviz_ca_col(ca_italy, col.col = "red", title = "Trust Contribution - Italy")

# Regions' Contribution - Iran
fviz_ca_row(ca_iran, col.row = "blue", title = "Region Contribution - Iran")

# Trust Categories' Contribution - Iran
fviz_ca_col(ca_iran, col.col = "red", title = "Trust Contribution - Iran")

# 7?????? Extract & Compare Numerical Results
# Get row coordinates (regions)
italy_regions <- ca_italy$row$coord
iran_regions  <- ca_iran$row$coord

# Get column coordinates (trust levels)
italy_trust <- ca_italy$col$coord
iran_trust  <- ca_iran$col$coord

# Print for comparison
print("Italy Regions CA Coordinates:")
print(italy_regions)

print("Iran Regions CA Coordinates:")
print(iran_regions)

print("Italy Trust Categories Coordinates:")
print(italy_trust)

print("Iran Trust Categories Coordinates:")
print(iran_trust)




# 8?????? Save Outputs for Future Analysis
write.csv(italy_regions, "italy_region_coordinates.csv")
write.csv(iran_regions, "iran_region_coordinates.csv")
write.csv(italy_trust, "italy_trust_coordinates.csv")
write.csv(iran_trust, "iran_trust_coordinates.csv")

# ??? End of Script
print("??? Analysis Complete! Check the CSV files for detailed numerical results.")
