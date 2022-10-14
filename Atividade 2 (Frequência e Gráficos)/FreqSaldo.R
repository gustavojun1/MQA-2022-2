sink("FreqSaldo.txt")
library('plyr')
count(DATASET.MQA, "Saldo")
sink()
