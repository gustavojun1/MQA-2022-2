# carregando a biblioteca "ggpubr" utilizada
library("ggpubr")

# carregando o dataset
dados = DATASET.MQA

# utilizando a função "ggdensity" para plotar um gráfico de densidade para a
# variável "Nota_Crédito" 
ggdensity(dados$Nota_Credito, 
          main = "Gráfico de Densidade das Notas de Crédito",
          xlab = "Nota de Crédito")