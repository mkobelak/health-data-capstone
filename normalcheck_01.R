qqnorm(mrg5$Brst_Cancer, main = "Breast Cancer")
qqline(mrg5$Brst_Cancer)

qqnorm(mrg5$Lung_Cancer, main = "Lung Cancer")
qqline(mrg5$Lung_Cancer)

qqnorm(mrg5$Col_Cancer, main = "Colon Cancer")
qqline(mrg5$Col_Cancer)

qqnorm(mrg5$CHD, main = "Heart Disease")
qqline(mrg5$CHD)
# All normal

qqnorm(mrg5$Whi_Cancer, main = "Death from Cancer (White)")
qqline(mrg5$Whi_Cancer)

qqnorm(mrg5$Blk_HeartDis, main = "Death from Heart Disease (Black)")
qqline(mrg5$Blk_HeartDis)

qqnorm(mrg5$No_Exercise, main = "No Exercise") 
qqline(mrg5$No_Exercise)

