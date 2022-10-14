sink("FreqSalario.txt")
library('plyr')
count(DATASET.MQA, "Salario")
sink()