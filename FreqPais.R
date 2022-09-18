sink("FreqPais.txt")
library('plyr')
count(DATASET.MQA, "Pais")
sink()