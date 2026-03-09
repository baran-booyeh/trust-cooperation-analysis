#IRAN_STATISTICAL TEST
library(readxl)
library(dplyr)

iran <- read_excel("C:/Users/BARAN/Desktop/Thesis/Data Sets/IRAN/Region_Iran2.xlsx")

df_iran <- as.data.frame(iran)
df_iran <- df_iran %>% select(-c(TOTAL, `Don't know`))
head(df_iran)

#Define regions belonging to north and south Iran
north_ir <- c("Gilan", "Mazandaran", "Golestan", "Ardabil", "Zanjan", "Alborz", "Qazvin", "Tehran", "Semnan")
south_ir <- c("Hormozgan", "Bushehr", "Khuzestan", "Fars", "Sistan Va Baluchestan", "Kerman")

#Filter the dataset to separate them
df_north <- df_iran %>% filter(Region %in% north_ir)
df_south <- df_iran %>% filter(Region %in% south_ir)
df_north_trust <- df_north %>% select(-Region)
df_south_trust <- df_south %>% select(-Region)

#contingency table
north_totals <- colSums(df_north_trust)
south_totals <- colSums(df_south_trust)
trust_table <- rbind(north_totals, south_totals)

#Assign row names
rownames(trust_table) <- c("North Iran", "South Iran")

print(trust_table)

print(chi_result$expected)
#"Don't know" column is so low! Should I delete it or not?!
#Let's check both chi-square and Fischer test


#Chi-Square Test by removing the "Don't Know" column
trust_table_filtered <- trust_table[, 1:2]  
chi_result_filtered <- chisq.test(trust_table_filtered)
print(chi_result_filtered)

#The results of the Chi-Square test show that there is no significant difference 
#in trust levels between North and South Iran. 
#The p-value (0.8662)is much greater than 0.05, meaning that any variation
#in trust responses is likely due to random chance rather than 
#a true regional difference. This suggests that, overall, 
# trust patterns in North and South Iran are similar, and geography alone 
#does not appear to strongly influence trust levels.


#SeCond Option:
fisher_result <- fisher.test(trust_table)
print(fisher_result)

#Still high p-value
