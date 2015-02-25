# Reshape Titanic data into a 2 x 12 vector
temp = as.data.frame.table(Titanic) # Make into a categorized data frame
temp = temp[!(temp$Class == "Crew"),] # Exclude the crew member survival rates
tit = temp[temp$Survived == "Yes",c("Class","Sex","Age","Freq")] # extract the the survived passengers
tit$Died = temp[temp$Survived == "No",c("Freq")] # extract the dead passengers
names(tit) = c("Class","Sex","Age","Survived","Died") # Rename Freq to Survived and Died
tit$Age = factor(tit$Age,levels=levels(tit$Age)[c(2,1)]) # Reorder the factors to match handout
tit$Sex = factor(tit$Sex,levels=levels(tit$Sex)[c(2,1)]) # Reorder the factors to match handout

tit.model = with(tit, glm(cbind(Survived,Died)~Age+Class+Sex,family=binomial)) # Run binomial regression
summary(tit.model) 
