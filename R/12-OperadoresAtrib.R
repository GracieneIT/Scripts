# Operadores de AtribuiÃ§Ã£o

# Obs: Caso tenha problemas com a acentuaÃ§Ã£o, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretÃ³rio de trabalho
# Coloque entre aspas o diretÃ³rio de trabalho que vocÃª estÃ¡ usando no seu computador
# NÃ£o use diretÃ³rios com espaÃ§o no nome
setwd("G:/FCD/BigDataRAzure/Cap03")
getwd()

vec1 = 1:4
vec2 <- 1:4

class(vec1)
class(vec2)

typeof(vec1)
typeof(vec2)


mean(x = 1:10)
x   

mean(x <- 1:10)
x 

