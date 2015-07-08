# read in file
weight_loss <- read.csv("Weight_Loss_Survey_Data.csv", fileEncoding="latin1")

# Subset data for complete responses 
complete_data <- subset(weight_loss, Status=="Complete")

# Remove unneeded columns
working_data <- complete_data[c(1,23,25,27,31,33:84)]

# Try Lose Weight column
working_data$Try_Lose_Weight <- as.character(working_data$Try_Lose_Weight)
working_data$Try_Lose_Weight[working_data$Try_Lose_Weight == "Yes, I worked at losing weight."] <- "Yes"
working_data$Try_Lose_Weight[working_data$Try_Lose_Weight == "No, I was conscious/careful about what I ate but did not work at losing weight or count calories."] <- "No_Careful"
working_data$Try_Lose_Weight[working_data$Try_Lose_Weight == "I wanted to lose weight and tried sometimes, but found it too challenging with having a new baby."] <- "Too_Challenging"
working_data$Try_Lose_Weight[working_data$Try_Lose_Weight == "No, I ate according to my appetite."] <- "No"
working_data$Try_Lose_Weight[working_data$Try_Lose_Weight == "Other" | working_data$Try_Lose_Weight == ""] <- "NA"
working_data <- working_data[c(1:7,9:57)]

# Exercise while Breastfeeding column
working_data$Exercise_Breastfeeding <- as.character(working_data$Exercise_Breastfeeding)
working_data$Exercise_Breastfeeding[working_data$Exercise_Breastfeeding == "Sometimes, but not consistently"] <- "Sometimes"
working_data <- working_data[c(1:8,10:56)]

# Weight Watchers column
working_data$Weight_Watchers <- as.character(working_data$Weight_Watchers)
working_data$Weight_Watchers[working_data$Weight_Watchers == "I would recommend"] <- "Recommend"
working_data$Weight_Watchers[working_data$Weight_Watchers == "I wouldn't recommend"] <- "No_Recommend"
working_data$Weight_Watchers[working_data$Weight_Watchers == "Not sure"] <- "Not_Sure"
working_data$Weight_Watchers[working_data$Weight_Watchers == "N/A - I didn't try this" | working_data$Weight_Watchers == ""] <- "NA"

# MFP column
working_data$MFP <- as.character(working_data$MFP)
working_data$MFP[working_data$MFP == "I would recommend"] <- "Recommend"
working_data$MFP[working_data$MFP == "I wouldn't recommend"] <- "No_Recommend"
working_data$MFP[working_data$MFP == "Not sure"] <- "Not_Sure"
working_data$MFP[working_data$MFP == "N/A - I didn't try this" | working_data$Weight_Watchers == ""] <- "NA"

# Counting Calories column
working_data$Counting_Calories <- as.character(working_data$Counting_Calories)
working_data$Counting_Calories[working_data$Counting_Calories == "I would recommend"] <- "Recommend"
working_data$Counting_Calories[working_data$Counting_Calories == "I wouldn't recommend"] <- "No_Recommend"
working_data$Counting_Calories[working_data$Counting_Calories == "Not sure"] <- "Not_Sure"
working_data$Counting_Calories[working_data$Counting_Calories == "N/A - I didn't try this" | working_data$Weight_Watchers == ""] <- "NA"

# Jenny Craig column
working_data$Jenny_Craig <- as.character(working_data$Jenny_Craig)
working_data$Jenny_Craig[working_data$Jenny_Craig == "I would recommend"] <- "Recommend"
working_data$Jenny_Craig[working_data$Jenny_Craig == "I wouldn't recommend"] <- "No_Recommend"
working_data$Jenny_Craig[working_data$Jenny_Craig == "Not sure"] <- "Not_Sure"
working_data$Jenny_Craig[working_data$Jenny_Craig == "N/A - I didn't try this" | working_data$Weight_Watchers == ""] <- "NA"

# Body for Life column
working_data$Body_for_Life <- as.character(working_data$Body_for_Life)
working_data$Body_for_Life[working_data$Body_for_Life == "I would recommend"] <- "Recommend"
working_data$Body_for_Life[working_data$Body_for_Life == "I wouldn't recommend"] <- "No_Recommend"
working_data$Body_for_Life[working_data$Body_for_Life == "Not sure"] <- "Not_Sure"
working_data$Body_for_Life[working_data$Body_for_Life == "N/A - I didn't try this" | working_data$Weight_Watchers == ""] <- "NA"
working_data <- working_data[c(1:14,18:55)]

# Weight Loss Difficulty column
working_data$Weight_Loss_Difficulty <- as.character(working_data$Weight_Loss_Difficulty)
working_data$Weight_Loss_Difficulty[working_data$Weight_Loss_Difficulty == "Neutral/About the same as any other time I've tried to lose weight"] <- "Neutral"
working_data$Weight_Loss_Difficulty[working_data$Weight_Loss_Difficulty == "Very Difficult"] <- "Very_Difficult"
working_data$Weight_Loss_Difficulty[working_data$Weight_Loss_Difficulty == "Very Easy"] <- "Very_Easy"
working_data$Weight_Loss_Difficulty[working_data$Weight_Loss_Difficulty == ""] <- "NA"

# Weight Loss Impact Supply column
working_data$Weight_Loss_Impact_Supply <- as.character(working_data$Weight_Loss_Impact_Supply)
working_data$Weight_Loss_Impact_Supply[working_data$Weight_Loss_Impact_Supply == "Not sure"] <- "Not_Sure"
working_data$Weight_Loss_Impact_Supply[working_data$Weight_Loss_Impact_Supply == "Other" | working_data$Weight_Loss_Impact_Supply == ""] <- "NA"
working_data <- working_data[c(1:17,21:52)]

# Walking column
working_data$Exercise_Type_Walking <- as.character(working_data$Exercise_Type_Walking)
working_data$Exercise_Type_Walking[working_data$Exercise_Type_Walking == "Walking"] <- "Y"
working_data$Exercise_Type_Walking[working_data$Exercise_Type_Walking == ""] <- "N"

# Running column
working_data$Exercise_Type_Running <- as.character(working_data$Exercise_Type_Running)
working_data$Exercise_Type_Running[working_data$Exercise_Type_Running == "Running"] <- "Y"
working_data$Exercise_Type_Running[working_data$Exercise_Type_Running == ""] <- "N"

# Yoga column
working_data$Exercise_Type_Yoga <- as.character(working_data$Exercise_Type_Yoga)
working_data$Exercise_Type_Yoga[working_data$Exercise_Type_Yoga == "Yoga"] <- "Y"
working_data$Exercise_Type_Yoga[working_data$Exercise_Type_Yoga == ""] <- "N"

# Biking column
working_data$Exercise_Type_Biking <- as.character(working_data$Exercise_Type_Biking)
working_data$Exercise_Type_Biking[working_data$Exercise_Type_Biking == "Biking"] <- "Y"
working_data$Exercise_Type_Biking[working_data$Exercise_Type_Biking == ""] <- "N"

# Group Exercise column
working_data$Exercise_Type_Group_Exercise <- as.character(working_data$Exercise_Type_Group_Exercise)
working_data$Exercise_Type_Group_Exercise[working_data$Exercise_Type_Group_Exercise == "Group exercise classes"] <- "Y"
working_data$Exercise_Type_Group_Exercise[working_data$Exercise_Type_Group_Exercise == ""] <- "N"

# Spinning column
working_data$Exercise_Type_Spinning <- as.character(working_data$Exercise_Type_Spinning)
working_data$Exercise_Type_Spinning[working_data$Exercise_Type_Spinning == "Spinning"] <- "Y"
working_data$Exercise_Type_Spinning[working_data$Exercise_Type_Spinning == ""] <- "N"

# Elliptical column
working_data$Exercise_Type_Elliptical <- as.character(working_data$Exercise_Type_Elliptical)
working_data$Exercise_Type_Elliptical[working_data$Exercise_Type_Elliptical == "Elliptical"] <- "Y"
working_data$Exercise_Type_Elliptical[working_data$Exercise_Type_Elliptical == ""] <- "N"

# Weights column
working_data$Exercise_Type_Weights <- as.character(working_data$Exercise_Type_Weights)
working_data$Exercise_Type_Weights[working_data$Exercise_Type_Weights == "Lifting weights"] <- "Y"
working_data$Exercise_Type_Weights[working_data$Exercise_Type_Weights == ""] <- "N"

# Crossfit column
working_data$Exercise_Type_Crossfit <- as.character(working_data$Exercise_Type_Crossfit)
working_data$Exercise_Type_Crossfit[working_data$Exercise_Type_Crossfit == "Crossfit"] <- "Y"
working_data$Exercise_Type_Crossfit[working_data$Exercise_Type_Crossfit == ""] <- "N"
working_data <- working_data[c(1:24,26:27,30:49)]

# Exercise_Frequency column
working_data$Exercise_Frequency <- as.character(working_data$Exercise_Frequency)
working_data$Exercise_Frequency[working_data$Exercise_Frequency == "1 Day"] <- "1_Day"
working_data$Exercise_Frequency[working_data$Exercise_Frequency == "7 Days"] <- "7_Days"
working_data$Exercise_Frequency[working_data$Exercise_Frequency == "2-3 Days"] <- "2_3_Days"
working_data$Exercise_Frequency[working_data$Exercise_Frequency == "4-6 Days"] <- "4_6_Days"

# Exercise Impact Supply column
working_data$Exercise_Impact_Supply <- as.character(working_data$Exercise_Impact_Supply)
working_data$Exercise_Impact_Supply[working_data$Exercise_Impact_Supply == "Not sure"] <- "Not_Sure"
working_data$Exercise_Impact_Supply[working_data$Exercise_Impact_Supply == "Other" | working_data$Exercise_Impact_Supply == ""] <- "NA"
working_data <- working_data[c(1:28,31:46)]

# Breastfeeding Experience column
working_data$Breastfeeding_Experience <- as.character(working_data$Breastfeeding_Experience)
working_data$Breastfeeding_Experience[working_data$Breastfeeding_Experience == "I exclusively pumped."] <- "EP"
working_data$Breastfeeding_Experience[working_data$Breastfeeding_Experience == "A combination of nursing and pumping."] <- "Combo"
working_data$Breastfeeding_Experience[working_data$Breastfeeding_Experience == "Primarily nursing, with little or no pumping."] <- "Nurse"
working_data$Breastfeeding_Experience[working_data$Breastfeeding_Experience == ""] <- "NA"

# Convert Age column
colnames(working_data)[colnames(working_data)=="Mothers_Age"] <- "Age"
working_data$Age <- as.character(working_data$Age)
working_data$Age[working_data$Age == "20-25 years old"] <- "20_25"
working_data$Age[working_data$Age == "26-30 years old"] <- "26_30"
working_data$Age[working_data$Age == "31-35 years old"] <- "31_35"
working_data$Age[working_data$Age == "36-40 years old"] <- "36_40"
working_data$Age[working_data$Age == "Under 20 years old"] <- "Under_20"
working_data$Age[working_data$Age == "41-45 years old"] <- "41_45"
working_data$Age[working_data$Age == ""] <- "NA"

# Convert Birth Experience column
working_data$Birth_Experience <- as.character(working_data$Birth_Experience)
working_data$Birth_Experience[working_data$Birth_Experience == "Vaginal birth, without medication"] <- "Vaginal_Birth_No_Meds"
working_data$Birth_Experience[working_data$Birth_Experience == "Vaginal birth, with medication (such as pitocin, epidural, antibiotics, etc.)"] <- "Vaginal_Birth_Meds"
working_data$Birth_Experience[working_data$Birth_Experience == "Planned c-section"] <- "Planned_C_Section"
working_data$Birth_Experience[working_data$Birth_Experience == "Unplanned/Emergency c-section"] <- "Unplanned_C_Section"
working_data$Birth_Experience[working_data$Birth_Experience == "Other"] <- "NA"
working_data$Birth_Experience[working_data$Birth_Experience == ""] <- "NA"
working_data <- working_data[c(1:31,33:44)]

# Convert First Baby column
working_data$First_Baby <- as.character(working_data$First_Baby)
working_data$First_Baby[working_data$First_Baby == "No, I have older children"] <- "No"
working_data$First_Baby[working_data$First_Baby == "Other" | working_data$First_Baby == "I prefer not to answer."] <- "NA"
working_data$First_Baby[working_data$First_Baby == ""] <- "NA"
working_data <- working_data[c(1:32,34:43)]

# Birth Type Column
colnames(working_data)[colnames(working_data)=="Single_Multiple_Birth"] <- "Birth_Type"
working_data$Birth_Type <- as.character(working_data$Birth_Type)
working_data$Birth_Type[working_data$Birth_Type == "I had a single birth."] <- "Single"
working_data$Birth_Type[working_data$Birth_Type == "I had twins."] <- "Twins"
working_data$Birth_Type[working_data$Birth_Type == "I had triplets."] <- "Triplets"
working_data$Birth_Type[working_data$Birth_Type == ""] <- "NA"
working_data <- working_data[c(1:33,35:36,38,40,42)]

working_data$Times_Nurse <- as.numeric(as.character(working_data$Times_Nurse))
working_data$Supplement <- as.character(working_data$Supplement)

# Create weight difference columns
weight_loss$Weight_Gained <- weight_loss$Weight_Prior_Delivery - weight_loss$Pre_Pregnancy_Weight
weight_loss$Weight_Lost_1_Month <- weight_loss$Weight_Prior_Delivery - weight_loss$Weight_1_Month
weight_loss$Weight_Lost_6_Month <- weight_loss$Weight_Prior_Delivery - weight_loss$Weight_6_Month
weight_loss$Weight_Lost_12_Month <- weight_loss$Weight_Prior_Delivery - weight_loss$Weight_12_Month

write.csv(working_data, "weight_loss.csv")
