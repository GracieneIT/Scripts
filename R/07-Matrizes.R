# Matrizes, Operações com Matrizes e Matrizes Nomeadas

#Obs.: Caso tenha problemas com a acentuaÃ§Ã£o, consulte o link:
#https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

#Configurando o diretório de trabalho
#Coloque entre aspas o diretório de trabalho que você está usando em seu computador
#Não use diretório com espaço no nome

setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

#Criando matrizes

#Números de Linhas
matrix(c(1,2,3,4,5,6), nr=2)
matrix(c(1,2,3,4,5,6), nr=3)
matrix(c(1,2,3,4,5,6), nr=6)

#Número de colunas
matrix(c(1,2,3,4,5,6), nc = 2)

#Help
?matrix


#Matrizes precisam ter número de elementos que sejam múltiplos do número de linhas
matrix(c(1,2,3,4,5), nr = 2)


#Criando matrizes a partir de vetores e preenchendo a partir das linhas
meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)
matrix(data = meus_dados, nrow = 5, ncol = 2)



#Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]



#Criando uma matriz diagonal
matriz = 1:3
diag(matriz)


#Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)


#Transposta de matriz
w <- matrix(c(2,4,8,12), nr=2, ncol=2)
w
t(w)
U <- t(w)
U


#Obtendo uma matriz inversa
solve(w)


#Multiplicação de matrizes
mat1 <- matrix(c(2,3,4,5), nr=2)
mat1
mat2 <- matrix(c(6,7,8,9), nr=2)
mat2
mat1*mat2
mat1/mat2
mat1 + mat2
mat1 - mat2


#Multiplicando matriz com vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr=2)
x*y


#Nomeando a matriz
mat3 <- matrix(c("Terra","Marte","Saturno","Netuno"),nr=2)
mat3
dimnames(mat3) = (list(c("linha1","linha2"), c("coluna1","coluna2")))
mat3


#Identificando linhas e colunas no momento de criação da matriz
matrix (c(1,2,3,4), nr=2, nc=2, dimnames = list(c("linha1","linha2"), c("coluna1","coluna2")))

#Combinando matrizes
mat4 <- matrix(c(2,3,4,5), nr=2)
mat4
mat5 <- matrix(c(6,7,8,9), nr=2)
mat5
cbind(mat4, mat5)
rbind(mat4, mat5)

#Desconstruindo matriz
c(mat4)



