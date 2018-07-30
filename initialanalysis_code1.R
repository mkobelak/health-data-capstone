# Load the datasets
riskdata <- read.csv("RISKFACTORSANDACCESSTOCARE.csv")
demogdata <- read.csv("DEMOGRAPHICS.csv")

bddata <- read.csv("MEASURESOFBIRTHANDDEATH.csv")


deathdata <- read.csv("LEADINGCAUSESOFDEATH.csv")

deathdata[deathdata==-1111]<-0
deathdata[deathdata==-1111.1]<-0
deathdata[deathdata==-1]<-0
deathdata[deathdata==-2222]<-0
deathdata[deathdata==-2222.2]<-0
deathdata[deathdata==-2]<-0


# Deal with missing values
# First replace all -1111, -1111.1, -1, -2222.2, -2222, -2 with ?, so that Weka can #read it, and then a filter can be applied to impute the mean of the attributes into #the missing value spot

# I know I could have merged them and then changed the values to NA, but I have a good reason for doing it this way, as I'll be making seperate merges for each race

riskdata[riskdata==-1111]<-NA
riskdata[riskdata==-1111.1]<-NA
riskdata[riskdata==-1]<-NA
riskdata[riskdata==-2222]<-NA
riskdata[riskdata==-2222.2]<-NA
riskdata[riskdata==-2]<-NA

bddata[bddata==-1111]<-NA
bddata[bddata==-1111.1]<-NA
bddata[bddata==-1]<-NA
bddata[bddata==-2222]<-NA
bddata[bddata==-2222.2]<-NA
bddata[bddata==-2]<-NA

demogdata[demogdata==-1111]<-NA
demogdata[demogdata==-1111.1]<-NA
demogdata[demogdata==-1]<-NA
demogdata[demogdata==-2222]<-NA
demogdata[demogdata==-2222.2]<-NA
demogdata[demogdata==-2]<-NA



# Eventually we will replace the missing values with the mean of their column in Weka. (not yet though) 









# Deathdata cleaning 
# This dataset has mostly NA values but can be still used if we set those to 0, and add up that counties numbers to a total regardless of age (i.e. Age1_Cancer + Age2_Cancer +..)
# Then drop the former columns

deathdata2 <- deathdata

#attach(deathdata2)




# Remove CI columns
deathdata2<-deathdata2[(grep("^CI", names(deathdata2), invert = TRUE))]

# Cancer 

# Sum the cancers to 
deathdata2[, "Whi_Cancer"] <- deathdata2$B_Wh_Cancer + deathdata2$C_Wh_Cancer + deathdata2$D_Wh_Cancer + deathdata2$E_Wh_Cancer + deathdata2$F_Wh_Cancer

deathdata2$B_Wh_Cancer <- NULL
deathdata2$C_Wh_Cancer <- NULL
deathdata2$D_Wh_Cancer <- NULL
deathdata2$E_Wh_Cancer <- NULL
deathdata2$F_Wh_Cancer <- NULL


# Check is good.
#deathdata2$Whi_Cancer[1]
#deathdata2$B_Wh_Cancer[1] + deathdata2$C_Wh_Cancer[1] + deathdata2$D_Wh_Cancer[1] + deathdata2$E_Wh_Cancer[1] + #deathdata2$F_Wh_Cancer[1]

deathdata2[, "Blk_Cancer"] <- deathdata2$B_Bl_Cancer + deathdata2$C_Bl_Cancer + deathdata2$D_Bl_Cancer + deathdata2$E_Bl_Cancer + deathdata2$F_Bl_Cancer

deathdata2$B_Bl_Cancer <- NULL
deathdata2$C_Bl_Cancer <- NULL
deathdata2$D_Bl_Cancer <- NULL
deathdata2$E_Bl_Cancer <- NULL
deathdata2$F_Bl_Cancer <- NULL

deathdata2[, "His_Cancer"] <- deathdata2$B_Hi_Cancer + deathdata2$C_Hi_Cancer + deathdata2$D_Hi_Cancer + deathdata2$E_Hi_Cancer + deathdata2$F_Hi_Cancer

deathdata2$B_Hi_Cancer <- NULL
deathdata2$C_Hi_Cancer <- NULL
deathdata2$D_Hi_Cancer <- NULL
deathdata2$E_Hi_Cancer <- NULL
deathdata2$F_Hi_Cancer <- NULL

deathdata2[, "Oth_Cancer"] <- deathdata2$B_Ot_Cancer + deathdata2$C_Ot_Cancer + deathdata2$D_Ot_Cancer + deathdata2$E_Ot_Cancer + deathdata2$F_Ot_Cancer

deathdata2$B_Ot_Cancer <- NULL
deathdata2$C_Ot_Cancer <- NULL
deathdata2$D_Ot_Cancer <- NULL
deathdata2$E_Ot_Cancer <- NULL
deathdata2$F_Ot_Cancer <- NULL

# Now for Comp

deathdata2[, "Whi_Comp"] <- deathdata2$A_Wh_Comp 

deathdata2$A_Wh_Comp <- NULL

deathdata2[, "Blk_Comp"] <- deathdata2$A_Bl_Comp 

deathdata2$A_Bl_Comp <- NULL


deathdata2[, "His_Comp"] <- deathdata2$A_Hi_Comp 

deathdata2$A_Hi_Comp <- NULL


deathdata2[, "Oth_Comp"] <- deathdata2$A_Ot_Comp 

deathdata2$A_Ot_Comp <- NULL

# Now BirthDef

deathdata2[, "Whi_BirthDef"] <- deathdata2$A_Wh_BirthDef 

deathdata2$A_Wh_BirthDef <- NULL

deathdata2[, "Blk_BirthDef"] <- deathdata2$A_Bl_BirthDef 

deathdata2$A_Bl_BirthDef <- NULL

deathdata2[, "His_BirthDef"] <- deathdata2$A_Hi_BirthDef 

deathdata2$A_Hi_BirthDef <- NULL

deathdata2[, "Oth_BirthDef"] <- deathdata2$A_Ot_BirthDef 

deathdata2$A_Ot_BirthDef <- NULL

# Injury

deathdata2[, "Whi_Injury"] <- deathdata2$B_Wh_Injury + deathdata2$C_Wh_Injury + deathdata2$D_Wh_Injury

deathdata2$B_Wh_Injury <- NULL
deathdata2$C_Wh_Injury <- NULL
deathdata2$D_Wh_Injury <- NULL

deathdata2[, "Blk_Injury"] <- deathdata2$B_Bl_Injury + deathdata2$C_Bl_Injury + deathdata2$D_Bl_Injury

deathdata2$B_Bl_Injury <- NULL
deathdata2$C_Bl_Injury <- NULL
deathdata2$D_Bl_Injury <- NULL

deathdata2[, "His_Injury"] <- deathdata2$B_Hi_Injury + deathdata2$C_Hi_Injury + deathdata2$D_Hi_Injury

deathdata2$B_Hi_Injury <- NULL
deathdata2$C_Hi_Injury <- NULL
deathdata2$D_Hi_Injury <- NULL

deathdata2[, "Oth_Injury"] <- deathdata2$B_Ot_Injury + deathdata2$C_Ot_Injury + deathdata2$D_Ot_Injury

deathdata2$B_Ot_Injury <- NULL
deathdata2$C_Ot_Injury <- NULL
deathdata2$D_Ot_Injury <- NULL

# Homicide

deathdata2[, "Whi_Homicide"] <- deathdata2$B_Wh_Homicide + deathdata2$C_Wh_Homicide + deathdata2$D_Wh_Homicide

deathdata2$B_Wh_Homicide <- NULL
deathdata2$C_Wh_Homicide <- NULL
deathdata2$D_Wh_Homicide <- NULL

deathdata2[, "Blk_Homicide"] <- deathdata2$B_Bl_Homicide + deathdata2$C_Bl_Homicide + deathdata2$D_Bl_Homicide

deathdata2$B_Bl_Homicide <- NULL
deathdata2$C_Bl_Homicide <- NULL
deathdata2$D_Bl_Homicide <- NULL

deathdata2[, "His_Homicide"] <- deathdata2$B_Hi_Homicide + deathdata2$C_Hi_Homicide + deathdata2$D_Hi_Homicide

deathdata2$B_Hi_Homicide <- NULL
deathdata2$C_Hi_Homicide <- NULL
deathdata2$D_Hi_Homicide <- NULL

# Oth_Homicide not behaving. Find out why. Solved.
deathdata2[, "Oth_Homicide"] <- deathdata2$B_Ot_Homicide + deathdata2$C_Ot_homicide + deathdata2$D_Ot_Homicide

deathdata2$B_Ot_Homicide <- NULL
deathdata2$C_Ot_homicide <- NULL
deathdata2$D_Ot_Homicide <- NULL

# Suicide

deathdata2[, "Whi_Suicide"] <- deathdata2$C_Wh_Suicide + deathdata2$D_Wh_Suicide

deathdata2$C_Wh_Suicide <- NULL
deathdata2$D_Wh_Suicide <- NULL

deathdata2[, "Blk_Suicide"] <- deathdata2$C_Bl_Suicide + deathdata2$D_Bl_Suicide

deathdata2$C_Bl_Suicide <- NULL
deathdata2$D_Bl_Suicide <- NULL

deathdata2[, "His_Suicide"] <- deathdata2$C_Hi_Suicide + deathdata2$D_Hi_Suicide

deathdata2$C_Hi_Suicide <- NULL
deathdata2$D_Hi_Suicide <- NULL

deathdata2[, "Oth_Suicide"] <- deathdata2$C_Ot_Suicide + deathdata2$D_Ot_Suicide

deathdata2$C_Ot_Suicide <- NULL
deathdata2$D_Ot_Suicide <- NULL

# Heart Disease

deathdata2[, "Whi_HeartDis"] <- deathdata2$D_Wh_HeartDis + deathdata2$E_Wh_HeartDis + deathdata2$F_Wh_HeartDis

deathdata2$D_Wh_HeartDis <- NULL
deathdata2$E_Wh_HeartDis <- NULL
deathdata2$F_Wh_HeartDis <- NULL

deathdata2[, "Blk_HeartDis"] <- deathdata2$D_Bl_HeartDis + deathdata2$E_Bl_HeartDis + deathdata2$F_Bl_HeartDis

deathdata2$D_Bl_HeartDis <- NULL
deathdata2$E_Bl_HeartDis <- NULL
deathdata2$F_Bl_HeartDis <- NULL

deathdata2[, "His_HeartDis"] <- deathdata2$D_Hi_HeartDis + deathdata2$E_Hi_HeartDis + deathdata2$F_Hi_HeartDis

deathdata2$D_Hi_HeartDis <- NULL
deathdata2$E_Hi_HeartDis <- NULL
deathdata2$F_Hi_HeartDis <- NULL

deathdata2[, "Oth_HeartDis"] <- deathdata2$D_Ot_HeartDis + deathdata2$E_Ot_HeartDis + deathdata2$F_Ot_HeartDis

deathdata2$D_Ot_HeartDis <- NULL
deathdata2$E_Ot_HeartDis <- NULL
deathdata2$F_Ot_HeartDis <- NULL

# HIV

deathdata2[, "Whi_HIV"] <- deathdata2$D_Wh_HIV

deathdata2$D_Wh_HIV <- NULL

deathdata2[, "Blk_HIV"] <- deathdata2$D_Bl_HIV

deathdata2$D_Bl_HIV <- NULL

deathdata2[, "His_HIV"] <- deathdata2$D_Hi_HIV

deathdata2$D_Hi_HIV <- NULL

deathdata2[, "Oth_HIV"] <- deathdata2$D_Ot_HIV

deathdata2$D_Ot_HIV <- NULL

# Done.





sum(deathdata2$Blk_Cancer)




# remove CI attributes from data
bddata<-bddata[(grep("^CI", names(bddata), invert = TRUE))]

demogdata<-demogdata[(grep("^CI", names(demogdata), invert = TRUE))]

riskdata<-riskdata[(grep("^CI", names(riskdata), invert = TRUE))]


(colSums(is.na(bddata))/3141)*100
#(colSums(is.na(demogdata))/3141)*100
#(colSums(is.na(riskdata))/3141)*100

#riskdata <- riskdata[complete.cases(riskdata[, ]), ]



#(colSums(is.na(riskdata))/3141)*100



# Merge the datasets
mrg1 <- merge(riskdata, demogdata, sort=TRUE)
mrgn <- merge(deathdata2, mrg1, sort=TRUE)
mrg2 <- merge(mrgn, bddata, sort=TRUE)


# Remove rows based on NA values in riskdata (do this after merge!!)
mrg3 <- mrg2[complete.cases(mrg2[, c("No_Exercise", "Few_Fruit_Veg", "High_Blood_Pres", "Obesity", "Smoker")]), ]