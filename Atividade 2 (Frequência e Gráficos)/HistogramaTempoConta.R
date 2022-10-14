TempoConta = DATASET.MQA$Tempo_de_Conta
png("HistogramaTempoConta.png")
hist(TempoConta, main = "Histograma do Tempo de Vida das Contas", ylab = "Frequência", xlab = "Tempo de Conta (em anos)" , col = "gray", breaks = 11, xlim = c(0, 10))
dev.off()