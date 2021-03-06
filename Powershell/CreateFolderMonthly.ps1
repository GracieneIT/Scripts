# Script para criar pasta mensal
# Última atualização: 04/11/2020

# Armazenando dados do mês (Nr. e nome)
$GDataMesComp = (Get-Date -UFormat %B).ToString()
$GDataMesN = (Get-Date).Month.ToString()


# Armazenando parâmetros do local e nome da pasta
$nPath = "C:\Temp\"
$Pasta = ($GDataMesN + ". " + (Get-Culture).TextInfo.ToTitleCase($GDataMesComp))


# Verificando se já existe o diretório
try{
    Test-Path ($nPath + $Pasta)
    New-Item -Path ($nPath + $Pasta) -ItemType directory
    #Write-Host "Pasta criada com SUCESSO: $nPath$Pasta"
    exit 0
}

catch{
    #Write-Host "Pasta já existe"
    exit 1
}