Salario <- as.numeric(gsub('[R$,]', '', DATASET.MQA$Salario))
png("HistogramaSalario.png")
hist(Salario, col = "grey", ylab = "Frequência", xlab = "Salario (em R$)", main = "Histograma dos Salarios", ylim = c(0, 30))
dev.off()
