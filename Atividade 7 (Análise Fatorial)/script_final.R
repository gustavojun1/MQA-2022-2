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
summary(pca, ncp=4)
library(factoextra)
fviz_screeplot(pca, ncp = 5)