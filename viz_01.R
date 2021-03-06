# Prevelance of cancer in total per race
whi_c = sum(mrg8$Whi_Cancer)
blk_c = sum(mrg8$Blk_Cancer)
his_c = sum(mrg8$His_Cancer)
oth_c = sum(mrg8$Oth_Cancer)
barplot(c(whi_c, blk_c, his_c, oth_c), names.arg = c("White", "Black", "Hispanic", "Other"), ylab = "Total Prevelance", main = "Total Deaths By Cancer Per Race", col = c("green", "yellow", "red", "darkblue"))

# Total population per race
whi_cnt <- sum(mrg8$White)
blk_cnt <- sum(mrg8$Black)
his_cnt <- sum(mrg8$Hispanic)
oth_cnt <- sum(mrg8$Native_American + mrg8$Asian)
barplot(c(whi_cnt, blk_cnt, his_cnt, oth_cnt), names.arg = c("White", "Black", "Hispanic", "Other"), ylab = "Total Prevelance", main = "Total Population Per Race", col = c("green", "yellow", "red", "darkblue"))

# Ratio of total cancer deaths/total deaths in sample (per race)
whi_rat <- whi_c/sum((mrg8$Whi_Cancer+mrg8$Whi_HeartDis+mrg8$Whi_HIV+mrg8$Whi_Homicide+mrg8$Whi_Injury+mrg8$Whi_Suicide+mrg8$Whi_BirthDef+mrg8$Whi_Comp), na.rm = TRUE)
blk_rat <- blk_c/sum((mrg8$Blk_Cancer+mrg8$Blk_HeartDis+mrg8$Blk_HIV+mrg8$Blk_Homicide+mrg8$Blk_Injury+mrg8$Blk_Suicide+mrg8$Blk_BirthDef+mrg8$Blk_Comp), na.rm = TRUE)
his_rat <- his_c/sum((mrg8$His_Cancer+mrg8$His_HeartDis+mrg8$His_HIV+mrg8$His_Homicide+mrg8$His_Injury+mrg8$His_Suicide+mrg8$His_BirthDef+mrg8$His_Comp), na.rm = TRUE)
oth_rat <- oth_c/sum((mrg8$Oth_Cancer+mrg8$Oth_HeartDis+mrg8$Oth_HIV+mrg8$Oth_Homicide+mrg8$Oth_Injury+mrg8$Oth_Suicide+mrg8$Oth_BirthDef+mrg8$Oth_Comp), na.rm = TRUE)

barplot(c(whi_rat, blk_rat, his_rat, oth_rat), names.arg = c("White", "Black", "Hispanic", "Other"), ylab = "Total Prevelance", main = "Total Deaths By Cancer Over Total Deaths Per Race", col = c("green", "yellow", "red", "darkblue"))

# Ratio of total CVD deaths/total deaths in sample (per race)
whi_rat <- sum(mrg8$Whi_HeartDis, na.rm = TRUE)/sum((mrg8$Whi_Cancer+mrg8$Whi_HeartDis+mrg8$Whi_HIV+mrg8$Whi_Homicide+mrg8$Whi_Injury+mrg8$Whi_Suicide+mrg8$Whi_BirthDef+mrg8$Whi_Comp), na.rm = TRUE)
blk_rat <- sum(mrg8$Blk_HeartDis, na.rm = TRUE)/sum((mrg8$Blk_Cancer+mrg8$Blk_HeartDis+mrg8$Blk_HIV+mrg8$Blk_Homicide+mrg8$Blk_Injury+mrg8$Blk_Suicide+mrg8$Blk_BirthDef+mrg8$Blk_Comp), na.rm = TRUE)
his_rat <- sum(mrg8$His_HeartDis, na.rm = TRUE)/sum((mrg8$His_Cancer+mrg8$His_HeartDis+mrg8$His_HIV+mrg8$His_Homicide+mrg8$His_Injury+mrg8$His_Suicide+mrg8$His_BirthDef+mrg8$His_Comp), na.rm = TRUE)
oth_rat <- sum(mrg8$Oth_HeartDis, na.rm = TRUE)/sum((mrg8$Oth_Cancer+mrg8$Oth_HeartDis+mrg8$Oth_HIV+mrg8$Oth_Homicide+mrg8$Oth_Injury+mrg8$Oth_Suicide+mrg8$Oth_BirthDef+mrg8$Oth_Comp), na.rm = TRUE)

barplot(c(whi_rat, blk_rat, his_rat, oth_rat), names.arg = c("White", "Black", "Hispanic", "Other"), ylab = "Total Prevelance", main = "Total Deaths By CVD Over Total Deaths Per Race", col = c("green", "yellow", "red", "darkblue"))


# Total Deaths To Different Types of Cancers and Heart Disease
l_canc <- sum(mrg8$Lung_Cancer)
c_canc <- sum(mrg8$Col_Cancer)
b_canc <- sum(mrg8$Brst_Cancer)
#hrt <- sum(c(mrg8$Whi_HeartDis, mrg8$Blk_HeartDis, mrg8$His_HeartDis, mrg8$Oth_HeartDis))
hrt <- sum(mrg8$CHD)

barplot(c(l_canc, c_canc, b_canc, hrt), names.arg = c("Lung Cancer", "Colon Cancer", "Breast Cancer", "Heart Disease"), ylab = "Total Prevelance", main = "Total Deaths Per Cancer and Heart Disease", col = c("green", "yellow", "red", "darkblue"))

canc <- sum(l_canc, c_canc, b_canc)

barplot(c(canc, hrt), names.arg = c("Cancer", "Heart Disease"), ylab = "Total Prevelance", main = "Total Deaths For Cancer and Heart Disease", col = c("green", "yellow", "red", "darkblue"))

# Prevelance of Heart Disease in total per race
whi_hrt <- sum(mrg8$Whi_HeartDis)
blk_hrt <- sum(mrg8$Blk_HeartDis)
his_hrt <- sum(mrg8$His_HeartDis)
oth_hrt <- sum(mrg8$Oth_HeartDis)

barplot(c(whi_hrt, blk_hrt, his_hrt, oth_hrt), names.arg = c("White", "Black", "Hispanic", "Other"), ylab = "Total Prevelance", main = "Total Deaths Due to Heart Disease", col = c("green", "yellow", "red", "darkblue"))