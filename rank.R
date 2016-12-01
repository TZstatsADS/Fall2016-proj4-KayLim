# read the label and test #
setwd("C:/Users/LEE/Desktop/project4/Data")
prob_yq<-read.csv("adjust_prob.csv")
prob_test<-read.csv("topics_labels.csv")

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

write.csv(result, file=paste(data_output_path, "result.csv",sep=""))
