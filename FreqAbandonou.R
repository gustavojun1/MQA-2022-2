sink("FreqAbandonou.txt")
library('plyr')
count(DATASET.MQA, "Abandonou")
sink()
