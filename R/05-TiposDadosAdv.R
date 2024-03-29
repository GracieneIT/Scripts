# Tipos Avançados de dados em R

#Obs.: Caso tenha problemas com a acentuaÃ§Ã£o, consulte o link:
#https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

#Configurando o diretório de trabalho
#Coloque entre aspas o diretório de trabalho que você está usando em seu computador
#Não use diretório com espaço no nome

setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()


#Vetor: Possui 1 dimensão e 1 tipo de dado
vetor1 <- c(1:20)
vetor1
length(vetor1)
mode(vetor1)
class(vetor1)
typeof(vetor1)


#Matriz: possui 2 dimensões e 1 tipo de dado
matriz1 <- matrix(1:20, nrow = 2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)


#Array: Possui 2 ou mais dimensões e 1 tipo de dado
array1 <- array(1:5, dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

#Data Frame: Dados de diferentes tipos 
#Maneira mais fácil de explicar Data Frames:é uma matriz com diferentes tipos de dados

View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)


#Listas: coleção de diferentes objetos
#Diferentes tipos de dados são possíveis e comuns
lista1 <- list(a = matriz1, b = vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)


#Funções: também são vistas como objetos em R
func1 <- function(x){
var1 <- x * x  
return(var1)
}
func1(5)
class(func1)

#Removendo objetos
objects()
rm(array1, func1)
objects()

