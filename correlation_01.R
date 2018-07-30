# Take out categorical variables for correlative analysis
mrg6 <- mrg5

mrg6[, c("State_FIPS_Code", "County_FIPS_Code", "CHSI_County_Name", "CHSI_State_Name", "CHSI_State_Abbr", "Strata_ID_Number", "Strata_Determining_Factors", "MOBD_Time_Span", "LCD_Time_Span")] <- NULL

sapply(mrg6, var)

# Check some correlations
mrg7 <- cor(mrg6)

mrg7[lower.tri(mrg7,diag=TRUE)]=NA  
mrg7=as.data.frame(as.table(mrg7))  
mrg7=mrg7[order(-abs(mrg7$Freq)),]   

mrg7

# Remove highly correlated input variables
mrg8 <- mrg5

mrg8[, c("Total_Births", "Disabled_Medicare", "LBW")] <- NULL



# mrg9 is the dataset with all the top correlated attributes across the target variables
mrg9 <- mrg8[, c("Lung_Cancer", "Smoker", "Obesity", "Whi_Cancer", "Blk_Cancer", "His_Cancer", "Oth_Cancer", "No_Exercise", "Brst_Cancer", "CHD", "Black", "White", "Blk_HeartDis", "Population_Size", "Over_40", "High_Blood_Pres", "Diabetes")]

mrgcor <- cor(mrg9)
corrplot::corrplot(mrgcor, title = "Health Correlation Plot")

# Take a look at outliers
#summary(mrg8$Lung_Cancer) # 1st quartile is 49.40, 3rd quartile is 66.60
#summary(mrg8$Col_Cancer) # 1st quartile is 17.80, 3rd quartile is 22.60
#summary(mrg8$Brst_Cancer) # 1st quartile is 22.70, 3rd quartile is 28.50
#summary(mrg8$CHD) # 1st quartile is 149.6, 3rd quartile is 209.2


#mrg9 <- mrg8
# Taking care of rows where there are outliers.
#mrg9 <- mrg9[(mrg9$Lung_Cancer< 66.6 & mrg9$Lung_Cancer>49.4),]

#mrg9 <- mrg9[(mrg9$Col_Cancer <22.6 & mrg9$Col_Cancer> 17.80),]

#mrg9 <- mrg9[(mrg9$Brst_Cancer < 28.50 & mrg9$Brst_Cancer > 22.70),]

#mrg9 <- mrg9[(mrg9$CHD < 209.2 & mrg9$CHD > 149.2),]

#boxplot(mrg9$CHD)
# Outliers removed

# Now redo correlative tests for target variables in Weka


#library(foreign)
#write.arff(mrg8, file="CLEANDATA3.arff")

# Outlier removal didn't do anything to the correlation. Keep outliers?
# Yes because removing them causes our observables do go down to 110