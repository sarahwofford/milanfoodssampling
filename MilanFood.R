#------------------------------------------------------------------#
#read in the file and assign it to "milan"

#Milan Food data is loaded on Git Hub


milan <- read.csv("~/Desktop/Milan.csv", stringsAsFactors=FALSE)
head(milan) #check the head of the dataframe

set.seed(50) #set the seed to receive the same results if done again

#------------------------------------------------------------------#

#1) #find the mean of foodexp for the total population
mean(milan$foodexp)
nrow(milan) #

#------------------------------------------------------------------#

#2) #create a simple random sample, size 25 for question II
SRS2 <- sample(milan$foodexp, size=25, replace=FALSE)
mean(SRS2) #calcuate the mean
sd(SRS2) #calculate the standard deviation

#------------------------------------------------------------------#

#3) #create a simple random sample, size 100 for question III
SRS3 <- sample(milan$foodexp, size=100, replace=FALSE)
mean(SRS3) #calculate the mean
sd(SRS3) #calculate the standard deviation

#------------------------------------------------------------------#

#4) #create a stratified random sample, size 100 for question IV
#separate kids=NO and kids=Yes into two new data frames

KidsNo <- subset(milan, kid618=="No")
head(KidsNo) #double checking column kid618 had NOs
nrow(KidsNo) #274 respondents with no kids
274 * 0.20 #calculate 20% of the population WITHOUT kids 6-18

KidsYes <- subset(milan, kid618=="Yes")
head(KidsYes) #double checking column kid618 had YES
nrow(KidsYes) #226 respondents WITH kids
226 * 0.20 #calculate 20% of the population WITH kids 6-18


#sampling for 20% of WITH kids (size =45)
kyes <- sample(KidsYes$foodexp, size=45, replace=FALSE)
mean(kyes) #calculate the mean
sd(kyes) #calcuate the standard deviation

#sampling for 20% of people WITHOUT kids (size = 55)
kno <- sample(KidsNo$foodexp, size=55, replace=FALSE)
mean(kno) #calculate the mean
sd(kno) #calcuate the standard deviation

#calculate the weighted average of kno and kyes
(mean(kyes)+mean(kno))/2

#------------------------------------------------------------------#

#5) #create a simple random sample, size 100 for question V

#use only the first 100 respondents for this queston
first100 <- subset(milan, hhid<101)

#calculate the mean and sd of the first 100 respondents
mean(first100$foodexp) #calculate the mean
sd(first100$foodexp) #calcuate the standard deviation

#------------------------------------------------------------------#
