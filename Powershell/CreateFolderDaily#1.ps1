
# ---- CRIANDO PASTA DIÁRIA [SEM CONDICIONAL] ---
# Date: 23/10/2019
# Last Update: 30/10/2020
# Developed by G2SC

# Armazenando dados do mês (Nr. e nome)
$GDataMesComp = (Get-Date -UFormat %B).ToString()
$GDataMesN = (Get-Date).Month.ToString()
$Nominal = ($GDataMesN + ". " + (Get-Culture).TextInfo.ToTitleCase($GDataMesComp))


# Armazenando parâmetros do local e nome da pasta
$nPath = 'C:\Temp\' + $Nominal
$nFolder = (Get-Date).tostring("ddMM")


# Criando pasta no diretório declarado
New-Item -Path ($nPath + "\" + $nFolder) -ItemType directory

