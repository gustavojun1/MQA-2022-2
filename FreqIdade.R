sink("FreqIdade.txt")
library('plyr')
count(DATASET.MQA, "Idade")
sink()