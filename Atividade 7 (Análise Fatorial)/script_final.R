library(dplyr)
library("Hmisc")

# padronizando os dados
dados = data.frame(
  Nota_Credito = scale(DATASET$Nota_Credito, center = T), 
  Idade = scale(DATASET$Idade, center = T), 
  Tempo_de_Conta = scale(DATASET$Tempo_de_Conta, center = T),
  Salario = scale(as.numeric(gsub('[R$,]', '', DATASET$Salario)), center = T),
  Saldo = scale(as.numeric(gsub('[R$,]', '', DATASET$Saldo)), center = T),
  Numero_Produtos = scale(DATASET$Numero_Produtos, center = T)
)

# criando matriz de correlação
dados.rcorr = rcorr(as.matrix(dados))
View(dados.rcorr$r)

# calculando o coeficiente KMO
# já dá também o MSA para cada variável (Etapa 4)
library(psych)
KMO(dados)

# teste de Bartlett da matriz de correlação (retirando Nota_Credito)
bartlett.test(list(dados$Idade, dados$Tempo_de_Conta, dados$Salario, dados$Saldo, dados$Numero_Produtos))
# como p-value >> 0.05, eu NÃO REJEITO h0, ou seja, AF não é uma análise adequada

# determinação do número de fatores
library(FactoMineR)
pca = PCA(dados)
library(factoextra)
fviz_screeplot(pca, ncp = 5)

# rotação via Varimax
dados.fac = factanal(na.omit(dados), factors = 2, rotation = "varimax")
dados.fac
plot(dados.fac$loadings[,1], 
     dados.fac$loadings[,2],
     xlab = "Fator 1", 
     ylab = "Fator 2", 
     ylim = c(-1,1),
     xlim = c(-1,1),
     main = "Rotação Varimax")
text(dados.fac$loadings[,1]-0.1, 
     dados.fac$loadings[,2]+0.1,
     colnames(dados),
     col="blue",
     cex = 0.6)
abline(h = 0, v = 0)

