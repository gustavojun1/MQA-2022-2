MembroAtivo = table(DATASET.MQA$Membro_Ativo)
porcentagem = round(100*MembroAtivo/sum(MembroAtivo), 1)
cores = c("red", "green")
png("GraficoMembroAtivo.png")
pie(MembroAtivo, labels = porcentagem, main = "Gráfico de Pizza Membros Ativos", col = cores)
legend("topright", c("Não ativo", "Ativo"), fill = cores)
dev.off()
