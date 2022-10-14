Saldo <- as.numeric(gsub('[R$,]', '', DATASET.MQA$Saldo))
png("HistogramaSaldo.png")
hist(Saldo, col = "grey", ylab = "Frequência", xlab = "Saldo (em R$)", main = "Histograma dos Saldos")
dev.off()
