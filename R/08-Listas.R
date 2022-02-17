# Listas,operações com listas e listas nomeadas

#Obs.: Caso tenha problemas com a acentuaÃ§Ã£o, consulte o link:
#https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

#Configurando o diretório de trabalho
#Coloque entre aspas o diretório de trabalho que você está usando em seu computador
#Não use diretório com espaço no nome

setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

#Use List() para criar listas

#Listas de strings
lista_caracter1 = list('A', 'B', 'C')
lista_caracter1
lista_caracter2 = list(c('A','A'),'B', 'C')
lista_caracter2
lista_caracter3 = list(matrix(c("A","A","A","A"),nr=2),'B','C')
lista_caracter3

#Lista de números inteiros
lista_inteiros = list(2,3,4)
lista_inteiros 


#Lista de números floats
lista_floats = list(1.90, 45.3,300.5)
lista_floats

#lista de números complexos
lista_complexos = list(5.2 + 3i, 2.4 +4i)
lista_complexos


#Lista de valores lógicos
lista_logicos = list(TRUE,FALSE,FALSE)
lista_logicos

#Lista composta
lista_composta1 = list("A",3,TRUE)
lista_composta1

lista1 <- list(1:10, c("zico", "Ronaldo", "Garrincha"),rnorm(10))
lista1

?rnorm

#Slicing da lista
lista1[1]
lista1[c(1,2)]
lista1[[2]][1]
lista1[[2]][1] = "Monica"
lista1


#Para nomear os elementos - Listas nomeadas
names(lista1) <- c("inteiros","carateres","numéricos")
lista1

vec_num <- 1:4
vec_char <- c("A","B","c","D")

lista2 <- list(Numeros = vec_num, Letras = vec_char)
lista2


#Nomear os elementos diretamente
lista2 <- list(elemento1 = 3:5, elemento2 = c(7,2,3,5))
lista2


#Trabalhando com elementos específicos da lista
names(lista1) <- c("inteiros","caracteres","numericos")
lista1

# $ é usado para especificar o título da dimensão
lista1$caracteres
length(lista1$inteiros)
lista1$inteiros

#Verificar o comprimento da lista
length (lista1)

#Podemos extrair um elemento específico dentro de cada nível da lista
lista1$caracteres[2]

#Mode dos elementos
mode(lista1$numericos)
mode(lista1$caracteres)


#Combinando duas listas
lista3<- c(lista1, lista2)
lista3


#Transformando um vetor em lista
v = c(1:3)
v
l = as.list(v)

#Unindo dois elementos em uma lista
mat = matrix(1:4,nrow=2)
mat
vet = c(1:9)
vet
lst = list(mat,vet)
lst






