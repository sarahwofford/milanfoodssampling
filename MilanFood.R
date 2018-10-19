milan <- read.csv("~/Desktop/Milan.csv", stringsAsFactors=FALSE)
head(milan)

set.seed(50)

#------------------------------------------------------------------#

#1) #find the mean of foodexp for the total population
mean(milan$foodexp)
nrow(milan)

#------------------------------------------------------------------#

#2) #create a simple random sample, size 25 for question II
SRS2 <- sample(milan$foodexp, size=25, replace=FALSE)
mean(SRS2)
sd(SRS2)

#------------------------------------------------------------------#

#3) #create a simple random sample, size 100 for question III
SRS3 <- sample(milan$foodexp, size=100, replace=FALSE)
mean(SRS3)
sd(SRS3)

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
mean(kyes)
sd(kyes)

#sampling for 20% of people WITHOUT kids (size = 55)
kno <- sample(KidsNo$foodexp, size=55, replace=FALSE)
mean(kno)
sd(kno)

#calculate the weighted average of kno and kyes
(mean(kyes)+mean(kno))/2

#------------------------------------------------------------------#

#5) #create a simple random sample, size 100 for question V

#use only the first 100 respondents for this queston
first100 <- subset(milan, hhid<101)

#calculate the mean and sd of the first 100 respondents
mean(first100$foodexp)
sd(first100$foodexp)

#------------------------------------------------------------------#
