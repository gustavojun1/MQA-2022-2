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
library(psych)
KMO(dados)

