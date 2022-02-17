#Operadores Básicos, Relacionais e Lógicos em R

#Obs.: Caso tenha problemas com a acentuaÃ§Ã£o, consulte o link:
#https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

#Configurando o diretório de trabalho
#Coloque entre aspas o diretório de trabalho que você está usando em seu computador
#Não use diretório com espaço no nome

setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

#Operadores Básico

#Soma
7 + 7

#Subtração
7 - 4

#Multiplicação
5 * 5

#Divisão
6 / 6

#Potenciação
3^2
3**2

#Módulo <Resto da operação>
16 %% 3



#Operadiores Relacionais

#Atribuindo variáveis
x = 7
y = 5

#Operadores
x > 8
x < 8
x >= 8
x <= 8
x == 8
x != 8



#Operadores lógicos

#And
(x==8) & (x==6)
(x==7) & (x>=5)
(x==8) & (x==7)

#Or
(x==8) | (x>5)
(x==8) | (x>=5)

#Not
x > 8
print (!x > 8)

