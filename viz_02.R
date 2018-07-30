lung_smoke <- cor(mrg8$Smoker, mrg8$Lung_Cancer)
ls_title <- paste(c("Smokers vs. Lung Cancer, r=", round(lung_smoke, 2)))



par(mfrow=c(2,2))

plot(mrg8$Smoker, mrg8$Lung_Cancer, xlab = "Smoker", ylab = "Lung Cancer", main = ls_title)
abline(lm(mrg8$Lung_Cancer~mrg8$Smoker), col="red")

plot(mrg8$No_Exercise, mrg8$Lung_Cancer, xlab = "No Exercise", ylab = "Lung Cancer", main = "No Exercise vs. Lung Cancer, r=0.57")
abline(lm(mrg8$Lung_Cancer~mrg8$Smoker), col="red")

plot(mrg8$CHD, mrg8$Lung_Cancer, xlab = "CHD", ylab = "Lung Cancer", main = "CHD vs. Lung Cancer, r=0.50")
abline(lm(mrg8$Lung_Cancer~mrg8$CHD), col="red")

plot(mrg8$High_Blood_Pres, mrg8$Lung_Cancer, xlab = "High Blood Pressure", ylab = "Lung Cancer", main = "High BP vs. Lung Cancer, r=0.49")
abline(lm(mrg8$Lung_Cancer~mrg8$High_Blood_Pres), col="red")

par(mfrow=c(2,2))

plot(mrg8$Black, mrg8$Brst_Cancer, xlab = "Black Population", ylab = "Breast Cancer", main = "Black Pop. vs. Breast Cancer,r=0.27")
abline(lm(mrg8$Brst_Cancer~mrg8$Black), col="red")

plot(mrg8$Blk_Cancer, mrg8$Brst_Cancer, xlab = "Blk Deaths (Cancer)", ylab = "Breast Cancer", main = "Black Deaths (Cancer) vs. B Cancer, r=0.19")
abline(lm(mrg8$Brst_Cancer~mrg8$Blk_Cancer), col="red")

plot(mrg8$Whi_Cancer, mrg8$Brst_Cancer, xlab = "White Deaths (Cancer)", ylab = "Breast Cancer", main = "Whi Deaths (Cancer) vs. B Cancer, r=0.046")
abline(lm(mrg8$Brst_Cancer~mrg8$Whi_Cancer), col="red")

plot(mrg8$His_Cancer, mrg8$Brst_Cancer, xlab = "Hispanic Deaths (Cancer)", ylab = "Breast Cancer", main = "His Deaths (Cancer) vs. B Cancer, r=-0.048")
abline(lm(mrg8$Brst_Cancer~mrg8$His_Cancer), col="red")



par(mfrow=c(2,2))

plot(mrg8$No_Exercise, mrg8$Col_Cancer, xlab = "No Exercise", ylab = "Colon Cancer", main = "No Exercise vs. Colon Cancer,r=0.32")
abline(lm(mrg8$Col_Cancer~mrg8$No_Exercise), col="red")

plot(mrg8$Obesity, mrg8$Col_Cancer, xlab = "Obesity", ylab = "Colon Cancer", main = "Obesity vs. Colon Cancer, r=0.30")
abline(lm(mrg8$Col_Cancer~mrg8$Obesity), col="red")

plot(mrg8$Smoker, mrg8$Col_Cancer, xlab = "Smoker", ylab = "Colon Cancer", main = "Smoker vs. Colon Cancer, r=0.29")
abline(lm(mrg8$Col_Cancer~mrg8$Smoker), col="red")

plot(mrg8$High_Blood_Pres, mrg8$Col_Cancer, xlab = "High Blood Pressure", ylab = "Colon Cancer", main = "High BP vs. Colon Cancer, r=0.22")
abline(lm(mrg8$Col_Cancer~mrg8$High_Blood_Pres), col="red")


par(mfrow=c(2,2))

plot(mrg8$Whi_HeartDis, mrg8$CHD, xlab = "White Deaths (CHD)", ylab = "Heart Disease", main = "White Deaths (CHD) vs. CHD,r=0.65")
abline(lm(mrg8$CHD~mrg8$Whi_HeartDis), col="red")

plot(mrg8$No_Exercise, mrg8$CHD, xlab = "No Exercise", ylab = "Heart Disease", main = "No Exercise vs. CHD, r=0.64")
abline(lm(mrg8$CHD~mrg8$No_Exercise), col="red")

plot(mrg8$Smoker, mrg8$CHD, xlab = "Smoker", ylab = "Heart Disease", main = "Smoker vs. CHD, r=0.50")
abline(lm(mrg8$CHD~mrg8$Smoker), col="red")

plot(mrg8$Obesity, mrg8$CHD, xlab = "Obesity", ylab = "Heart Disease", main = "Obesity vs. CHD, r=0.47")
abline(lm(mrg8$CHD~mrg8$Obesity), col="red")


par(mfrow=c(2,2))

plot(mrg8$Lung_Cancer, mrg8$Smoker, xlab = "Lung Cancer", ylab = "Smoker", main = "Lung Cancer vs. Smoker,r=0.67")
abline(lm(mrg8$Smoker~mrg8$Lung_Cancer), col="red")

plot(mrg8$No_Exercise, mrg8$Smoker, xlab = "No Exercise", ylab = "Smoker", main = "No Exercise vs. Smoker, r=0.59")
abline(lm(mrg8$Smoker~mrg8$No_Exercise), col="red")

plot(mrg8$CHD, mrg8$Smoker, xlab = "CHD", ylab = "Smoker", main = "CHD vs. Smoker, r=0.50")
abline(lm(mrg8$Smoker~mrg8$CHD), col="red")

plot(mrg8$Obesity, mrg8$Smoker, xlab = "Smoker", ylab = "Obesity", main = "Obesity vs. Smoker, r=0.48")
abline(lm(mrg8$Smoker~mrg8$Obesity), col="red")

