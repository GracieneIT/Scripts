
# ---- CRIANDO PASTA DIÁRIA [COM CONDICIONAL]---
# Date: 23/10/2019
# Last Update: 04/11/2020
# Developed by G2SC



# Armazenando dados do mês (Nr. e nome)
$GDataMesComp = (Get-Date -UFormat %B).ToString()
$GDataMesN = (Get-Date).Month.ToString()
$Nominal = ($GDataMesN + ". " + (Get-Culture).TextInfo.ToTitleCase($GDataMesComp))


# Armazenando parâmetros do local e nome da pasta
$nPath = 'C:\Temp\' + $Nominal
$nFolder = (Get-Date).tostring("ddMM")


# Verificando se já existe o diretório mensal
if (Test-Path $nPath)
{
  #Criando pasta no diretório declarado
  New-Item -Path ($nPath + "\" + $nFolder) -ItemType directory
 }

else
{

  $DesktopPath = [Environment]::GetFolderPath("Desktop")
  $dTime = Get-Date -Format g
  
  new-item ($DesktopPath + "\Error.txt")
 
   
  # Criando arquivo de erro no desktop do usuário
  $nMsg = $dTime + ": " + ”Error: Pasta " + $Nominal + " indisponível.”
  $nMsg >> $DesktopPath'\ERROR.txt'
  
  
  #Write-Output "Pasta não existe" 
  exit
}

