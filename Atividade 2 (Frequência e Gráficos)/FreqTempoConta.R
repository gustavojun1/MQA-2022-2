sink("FreqTempoConta.txt")
library('plyr')
count(DATASET.MQA, "Tempo_de_Conta")
sink()
