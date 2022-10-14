Notas = DATASET.MQA$Nota_Credito
png("HistogramaNotasCredito.png")
hist(Notas, main = "Histograma de Notas de Crédito", xlab = "Notas de Credito", col = "grey", ylab = "Frequência")
dev.off()
