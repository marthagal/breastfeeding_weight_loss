# libraries
library(ggplot2) 
library(plyr)
library(vcd) 

# Read data
weight_loss <- read.csv("weight_loss.csv")

## Categorical Variables

# Frequency Tables for Categorical Univariate Analysis
Try_Lose_Weight <- count(weight_loss, 'Try_Lose_Weight')
Exercise_Breastfeeding <- count(weight_loss, 'Exercise_Breastfeeding')
Weight_Watchers <- count(weight_loss, 'Weight_Watchers')
MFP <- count(weight_loss, 'MFP') # NEED TO FIX
Counting_Calories <- count(weight_loss, 'Counting_Calories')
Jenny_Craig <- count(weight_loss, 'Jenny_Craig')
Body_for_Life <- count(weight_loss, 'Body_for_Life')
Weight_Loss_Difficulty <- count(weight_loss, 'Weight_Loss_Difficulty') 
Weight_Loss_Impact_Supply <- count(weight_loss, 'Weight_Loss_Impact_Supply')
Exercise_Type_Walking <- count(weight_loss, 'Exercise_Type_Walking')
Exercise_Type_Running <- count(weight_loss, 'Exercise_Type_Running')
Exercise_Type_Yoga <- count(weight_loss, 'Exercise_Type_Yoga') 
Exercise_Type_Biking <- count(weight_loss, 'Exercise_Type_Biking')
Exercise_Type_Spinning <- count(weight_loss, 'Exercise_Type_Spinning')
Exercise_Type_Group_Exercise <- count(weight_loss, 'Exercise_Type_Group_Exercise')
Exercise_Type_Elliptical <- count(weight_loss, 'Exercise_Type_Elliptical') 
Exercise_Type_Weights <- count(weight_loss, 'Exercise_Type_Weights')
Exercise_Type_Crossfit <- count(weight_loss, 'Exercise_Type_Crossfit')
Exercise_Frequency <- count(weight_loss, 'Exercise_Frequency') #FIX
Exercise_Impact_Supply <- count(weight_loss, 'Exercise_Impact_Supply') 
Breastfeeding_Experience <- count(weight_loss, 'Breastfeeding_Experience')
Age <- count(weight_loss, 'Age') 
Birth_Experience <- count(weight_loss, 'Birth_Experience')
First_Baby <- count(weight_loss, 'First_Baby')
Birth_Type <- count(weight_loss, 'Birth_Type')
Supplement <- count(weight_loss, 'Supplement') #FIX

# Try_Lose_Weight - Significant Relationships
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Breastfeeding)) 
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Weight_Watchers))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$MFP)) 
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Counting_Calories)) 
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Jenny_Craig)) 
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Weight_Loss_Difficulty)) 
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Weight_Loss_Impact_Supply)) 
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Walking)) 
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Running)) 
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Yoga))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Biking))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Spinning))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Group_Exercise))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Elliptical))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Weights))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Type_Crossfit))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Frequency))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Exercise_Impact_Supply))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Breastfeeding_Experience))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Age))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Birth_Experience))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$First_Baby))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Birth_Type))
chisq.test(table(weight_loss$Try_Lose_Weight,weight_loss$Supplement))

# Exercise_Breastfeeding - Significant Relationships
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Weight_Watchers))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$MFP)) 
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Counting_Calories)) 
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Jenny_Craig)) 
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Weight_Loss_Difficulty)) 
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Weight_Loss_Impact_Supply)) 
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Walking)) 
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Running)) 
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Yoga))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Biking))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Spinning))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Group_Exercise))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Elliptical))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Weights))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Type_Crossfit))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Frequency))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Exercise_Impact_Supply))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Breastfeeding_Experience))
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Age))   
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Birth_Experience))   
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$First_Baby))   
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Birth_Type))   
chisq.test(table(weight_loss$Exercise_Breastfeeding,weight_loss$Supplement))

# Weight_Watchers - Significant Relationships
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$MFP)) 
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Counting_Calories)) 
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Jenny_Craig)) 
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Weight_Loss_Difficulty)) 
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Weight_Loss_Impact_Supply)) 
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Walking)) 
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Running)) 
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Yoga))  
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Biking))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Spinning))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Group_Exercise))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Elliptical))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Weights))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Type_Crossfit))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Frequency))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Exercise_Impact_Supply))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Breastfeeding_Experience))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Age))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Birth_Experience))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$First_Baby))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Birth_Type))
chisq.test(table(weight_loss$Weight_Watchers,weight_loss$Supplement))

# MFP - Significant Relationships
chisq.test(table(weight_loss$MFP,weight_loss$Counting_Calories))  
chisq.test(table(weight_loss$MFP,weight_loss$Jenny_Craig)) 
chisq.test(table(weight_loss$MFP,weight_loss$Weight_Loss_Difficulty))  
chisq.test(table(weight_loss$MFP,weight_loss$Weight_Loss_Impact_Supply)) 
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Walking))  
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Running))  
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Yoga))  
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Biking))  
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Spinning))
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Group_Exercise))  
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Elliptical))  
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Weights))  
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Type_Crossfit))
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Frequency))  
chisq.test(table(weight_loss$MFP,weight_loss$Exercise_Impact_Supply))
chisq.test(table(weight_loss$MFP,weight_loss$Breastfeeding_Experience))
chisq.test(table(weight_loss$MFP,weight_loss$Age))
chisq.test(table(weight_loss$MFP,weight_loss$Birth_Experience))
chisq.test(table(weight_loss$MFP,weight_loss$First_Baby))
chisq.test(table(weight_loss$MFP,weight_loss$Birth_Type))
chisq.test(table(weight_loss$MFP,weight_loss$Supplement))

# Counting_Calories - Significant Relationships
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Jenny_Craig)) 
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Weight_Loss_Difficulty))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Weight_Loss_Impact_Supply)) 
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Walking))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Running))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Yoga))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Biking))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Spinning))
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Group_Exercise))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Elliptical))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Weights))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Type_Crossfit))
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Frequency))  
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Exercise_Impact_Supply))
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Breastfeeding_Experience))
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Age))
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Birth_Experience))
chisq.test(table(weight_loss$Counting_Calories,weight_loss$First_Baby))
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Birth_Type))
chisq.test(table(weight_loss$Counting_Calories,weight_loss$Supplement))

# Jenny_Craig - Significant Relationships
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Weight_Loss_Difficulty))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Weight_Loss_Impact_Supply)) 
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Walking))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Running))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Yoga))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Biking))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Spinning))
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Group_Exercise))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Elliptical))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Weights))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Type_Crossfit))
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Frequency))  
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Exercise_Impact_Supply))
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Breastfeeding_Experience))
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Age))
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Birth_Experience))
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$First_Baby))
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Birth_Type))
chisq.test(table(weight_loss$Jenny_Craig,weight_loss$Supplement))

# Weight_Loss_Difficulty - Significant Relationships
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Weight_Loss_Impact_Supply)) 
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Walking))  
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Running))  
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Yoga))  
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Biking))  
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Spinning))
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Group_Exercise))  
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Elliptical))  
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Weights))  
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Type_Crossfit))
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Frequency))  
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Exercise_Impact_Supply))
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Breastfeeding_Experience))
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Age))
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Birth_Experience))
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$First_Baby))
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Birth_Type))
chisq.test(table(weight_loss$Weight_Loss_Difficulty,weight_loss$Supplement))

# Weight_Loss_Impact_Supply - Significant Relationships
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Walking))  
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Running))  
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Yoga))  
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Biking))  
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Spinning))
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Group_Exercise))  
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Elliptical))  
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Weights))  
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Type_Crossfit))
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Frequency))  
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Exercise_Impact_Supply))
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Breastfeeding_Experience))
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Age))
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Birth_Experience))
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$First_Baby))
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Birth_Type))
chisq.test(table(weight_loss$Weight_Loss_Impact_Supply,weight_loss$Supplement))
