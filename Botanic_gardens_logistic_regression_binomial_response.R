library(lattice)
library(Matrix)
library(lme4)
library(plotrix)
library(ggplot2)
library(multcomp)

response<- read.csv(file.choose(), header = T)
str(response)

response$Grid<- as.factor(response$Grid)
response$Replicate<- as.factor(response$Replicate)
response$WBSC<-as.factor(response$WBSC)
response$SUFW<-as.factor(response$SUFW)
response$NHHE<-as.factor(response$NHHE)
response$REWA<-as.factor(response$REWA)
response$EASP<-as.factor(response$EASP)
response$BRTH<-as.factor(response$BRTH)
response$CRRO<-as.factor(response$CRRO)
response$PICU<-as.factor(response$PICU)

str(response)

WBSC.response<- read.csv(file.choose(), header = T)

WBSC.approach<-glm(WBSC ~ Stimuli + Grid + Replicate, data=WBSC.response, family = binomial(link=logit))
summary(WBSC.approach)
anova(WBSC.approach)

WBSC.approach.1<-glm(WBSC ~ Grouping + Grid + Replicate, data=WBSC.response, family = binomial(link=logit))
summary(WBSC.approach.1)
anova(WBSC.approach.1)

SUFW.response<-glm(SUFW ~ Stimuli + Grid + Replicate, data=response, family = binomial(link=logit))
summary(SUFW.response)
anova(SUFW.response)

SUFW.response<-glm(SUFW ~ Grouping + Grid + Replicate, data=response, family = binomial(link=logit))
summary(SUFW.response)
anova(SUFW.response)

NHHE.response<- read.csv(file.choose(), header = T)

NHHE.approach<-glm(NHHE ~ Stimuli + Grid + Replicate, data=NHHE.response, family = binomial(link=logit))
summary(NHHE.approach)
anova(NHHE.approach)

NHHE.approach.1<-glm(NHHE ~ Grouping + Grid + Replicate, data=NHHE.response, family = binomial(link=logit))
summary(NHHE.approach.1)
anova(NHHE.approach.1)

REWA.response<- read.csv(file.choose(), header = T)

REWA.approach<-glm(REWA ~ Stimuli + Grid + Replicate, data=REWA.response, family = binomial(link=logit))
summary(REWA.approach)
anova(REWA.approach)

REWA.approach.1<-glm(REWA ~ Grouping + Grid + Replicate, data=REWA.response, family = binomial(link=logit))
summary(REWA.approach.1)
anova(REWA.approach.1)

EASP.response<- read.csv(file.choose(), header = T)

EASP.approach<-glm(EASP ~ Stimuli + Grid + Replicate, data=response, family = binomial(link=logit))
summary(EASP.approach)
anova(EASP.approach)

EASP.approach.1<-glm(EASP ~ Grouping + Grid + Replicate, data=response, family = binomial(link=logit))
summary(EASP.approach.1)
anova(EASP.approach.1)

BRTH.response<-glm(BRTH ~ Stimuli + Grid + Replicate, data=response, family = binomial(link=logit))
summary(BRTH.response)
anova(BRTH.response)

CRRO.response<-glm(CRRO ~ Stimuli + Grid + Replicate, data=response, family = binomial(link=logit))
summary(CRRO.response)
anova(CRRO.response)

PICU.response<-glm(PICU ~ Stimuli + Grid + Replicate, data=response, family = binomial(link=logit))
summary(PICU.response)
anova(PICU.response)