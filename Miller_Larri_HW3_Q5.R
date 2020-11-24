# Larri Miller
# HW3 Q5 bc I can't get RMarkdown to work

# reading in the CSVs
pres08 <- read.csv("pres08.csv")
polls08 <- read.csv("polls08.csv")

# looked at Chris & Catie's work, Tyler's work, & p. 132 for loop structure
# calculate margin
pres08$margin <- pres08$Obama - pres08$McCain

# number of days to election
polls08$daysToElect <- as.Date("2008-11-04") - as.Date(polls08$middate)

# state names
stateNames <- unique(polls08$state)

# creating vector to hold predictions
pres08$pollPredict <- NA

# loop to calculate mean across states
for (i in 1:51){
  statePollData <- subset(polls08, subset = (state == stateNames[i]))
  latestPoll <- subset(statePollData, daysToElect == min(daysToElect))
  pres08$pollPredict[i] <- mean(latestPoll$margin)
}

statesRegress <- lm(pres08$pollPredict ~ pres08$margin)

# creating plot 
plot(pres08$margin, pres08$pollPredict, 
     main = "Victory-Predicted Margin Regression", 
     xlab = "Actual Margin", 
     ylab = "Predicted Margin")
abline(statesRegress)

# printing reg coefficients and correlation
statesRegress <- lm(pres08$pollPredict ~ pres08$margin)
statesRegress
cor(pres08$margin, pres08$pollPredict)


