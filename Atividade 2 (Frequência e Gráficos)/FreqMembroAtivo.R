sink("FreqMembroAtivo.txt")
library('plyr')
count(DATASET.MQA, "Membro_Ativo")
sink()
