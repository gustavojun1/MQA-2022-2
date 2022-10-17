# x = tempo de conta e y = saldo:

# declaração das variáveis
dados = DATASET_ATUALIZADO
Tempo_de_Conta = dados$Tempo_de_Conta
Saldo = dados$Saldo
# plot do gráfico
plot(Tempo_de_Conta, Saldo, xlab="Tempo de Conta", ylab="Saldo")
# cálculo da regressão
reg = lm(Saldo ~ Tempo_de_Conta)
# plot da reta de regressão no gráfico
abline(reg, col="red")
# cálculo das informações relevantes (a, b, R^2, etc)
summary(reg)
# cálculo do coeficiente de correlação linear (r)
cor(Tempo_de_Conta, Saldo)


# x = salario e y = saldo:

Salario = dados$Salario
# plot do gráfico
plot(Salario, Saldo, xlab="Salario", ylab="Saldo")
# cálculo da regressão
reg = lm(Saldo ~ Salario)
# plot da reta de regressão no gráfico
abline(reg, col="red")
# cálculo das informações relevantes (a, b, R^2, etc)
summary(reg)
# cálculo do coeficiente de correlação linear (r)
cor(Salario, Saldo)