NotasCredito = DATASET.MQA$Nota_Credito
sink("FreqNotasCredito.txt")
library('plyr')
count(DATASET.MQA, "NotasCredito")
sink()