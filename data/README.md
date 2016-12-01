# Project: Words 4 Music
 the goal of this project is to find the relationship between music and lyric. To achieve this, i used classfication method, topic modeling


the logic here is p(word i)= sigma(1~k)p(word|topic)p(topic|feature)

main.r, string_conveert.r, matrix.covert.r and helper.r are constructiong topic modeling.

Process data_transition.R first. get the feature function and convert test/train data, and train the model with PCA.

String_convert.R will convert lyr file to the string format.

Matrix_convert.R will convert strings to matrix

main.R employ string_convert.R, Matrix_convert.R doing topic-modeling with Linear Discriminant Analysis.

helper.R adjust probabilities for all terms manually.

data_classification.R, we do classification for random forest.

Rank.R to get the result.
