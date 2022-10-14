NumeroProdutos = DATASET.MQA$Numero_Produto
png("HistogramaNumeroProdutos.png")
hist(NumeroProdutos, col = "grey", ylab = "Frequência", xlab = "N° de Produtos do Banco", main = "Histograma do Número de Produtos do Banco", xlim = c(0, 4))
dev.off()
