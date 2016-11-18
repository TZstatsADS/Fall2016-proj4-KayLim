# read the label and test #
setwd("/Users/Cristina/Desktop/16 Fall/5243 ADS/Project 4/data/")
prob_yq<-read.csv("adjust.csv")
prob_test<-read.csv("topic_label.csv")

name=prob_yq[,2]
name<-as.character(name)

prob_yq<-as.matrix(prob_yq[,-c(1,2)])
prob_test<-as.matrix(prob_test[,-1])

result<-prob_test%*%t(prob_yq)
colnames(result)=name

for (i in 1:nrow(result)){
  result[i,]=rank(-result[i,])
}

result
