#### main script####

load(file.choose())

source(file.choose()) ### find string_convert.r
source(file.choose()) ### find matrix_convert.r
md <- string_convert(lyr)

matx <- matrix_convert(md, 'english')

k <- 5

lda <- LDA(matx, 10)# use LDA to find a linear combination of the predictors 
#that gives maximum separation between the centers of the data while at the same time minimizing the variation within each group of data

output_topics <- terms(lda,100)

output_label <- topics(lda)


write.csv(output_label, 'label_k10.csv')
