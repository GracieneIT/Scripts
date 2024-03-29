# Interpretando um BoxPlot

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("D:/FCD/BigDataRAzure/Cap09")
getwd()


##### Boxplot #####

# Box-plot, ou diagrama de caixa, é possível obter informações sobre vários aspectos dos dados simultaneamente como, 
# outliers, dispersão, tendências centrais, erros padrão e simetria. 

# Utilizado para avaliar a distribuição empírica dos dados, é formado pelo primeiro e terceiro quartis, 
# juntamente com a mediana.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

mean(dados)
sd(dados)
median(dados)
range(dados)
quantile(dados)

boxplot(dados, main = "Número de Acidentes Diários")








