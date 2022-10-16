setwd("C:/Users/LCH/Desktop/Senior 2nd, 2019 fall/Deep learning Statistical perspective/Final project")
getwd()
ResNet14_BLKD <- read.csv("ResNet14 BLKD.csv", header = F)
ResNet20_BLKD <- read.csv("ResNet20 BLKD.csv", header = F)
ResNet26_BLKD <- read.csv("ResNet26 BLKD.csv", header = F)

ResNet14_GSKD <- read.csv("ResNet14 GSKD.csv", header = F)
ResNet20_GSKD <- read.csv("ResNet20 GSKD.csv", header = F)
ResNet26_GSKD <- read.csv("ResNet26 GSKD.csv", header = F)

anova <- function(data){
  Acc = c()
  setting = c()
  for(i in 1:nrow(data)){
    for(j in 1:(ncol(data)-1)){
      Acc <- c(Acc, data[i,j+1])
      setting <- c(setting, data[i,1])
    }
  }
  
  data_df <- data.frame(Acc = Acc, setting = as.factor(setting))
  data_ANOVA<-aov(Acc~setting, data=data_df)
  return(data_ANOVA) #, bartlett.test(Acc~setting, data=data_df)))
}


summary(anova(ResNet14_BLKD))
summary(anova(ResNet14_GSKD))
summary(anova(ResNet14_BLKD[-c(5,6),]))
summary(anova(ResNet14_GSKD[-c(5,6),]))

summary(anova(ResNet20_BLKD))
summary(anova(ResNet20_GSKD))
summary(anova(ResNet20_BLKD[-c(5,6),]))
summary(anova(ResNet20_GSKD[-c(5,6),]))

summary(anova(ResNet26_BLKD))
summary(anova(ResNet26_GSKD))
summary(anova(ResNet26_BLKD[-c(5,6),]))
summary(anova(ResNet26_GSKD[-c(5,6),]))

ResNet14_BLKD
library(plyr)
library(reshape2)
(melted <- melt(ResNet14_BLKD, id.vars=c("V1")))
ddply(melted, c("V1"), summarise, mean = mean(value), sd = sd(value))
mean(ResNet14_BLKD[9,2:5])
