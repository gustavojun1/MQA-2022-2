library(dplyr)
library("Hmisc")

# um dataset sobre a satisfação dos clientes de um restaurante
# cada variável representa uma nota de 1 a 5 que um cliente deu para determinado aspecto do restaurante
# cada entrada representa a avaliação de um cliente

dados_exemplo = data.frame(
  simpatia_funcionarios = c(4, 4, 5, 3, 5),
  rapidez_atendimento = c(2, 4, 3, 5, 1),
  conhecimento_funcionarios = c(1),
  
  pintura ,
  limpeza ,
  disposicao ,
  
  marcas,
  preco,
  formas_pagamento,
)

# criando matriz de correlação
dados.rcorr = rcorr(as.matrix(dados))
View(dados.rcorr$r)

