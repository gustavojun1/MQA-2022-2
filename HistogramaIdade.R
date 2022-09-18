Idade = DATASET.MQA$Idade
png("HistogramaIdade.png")
hist(Idade, main = "Histograma das Idades dos Donos das Contas", ylab = "Frequência", xlab = "Idade(em anos)", col = "grey")
dev.off()
