sink("FreqNumeroProdutos.txt")
library('plyr')
count(DATASET.MQA, "Numero_Produto")
sink()