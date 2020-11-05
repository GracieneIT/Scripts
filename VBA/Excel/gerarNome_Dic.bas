Attribute VB_Name = "macro_Dic"
Sub GerarNomes_Dic()
'Created: 04-11-2020
'Developed by: G2SC
'Last update: 04-11-2020
'Note: O código abaixo considera um arquivo que contenha no Sheet(1) apenas o primeiro nome e no Sheets(2) apenas sobrenome.
'O Sheets(3) foi reservado para armazenar a combinação criada pelo script. 

   Dim i, max, nr1, nr2, cFN, cLN As Integer
   Dim fn, ln As String
   Dim d As Scripting.Dictionary
   Dim element As Variant
   
   Set d = New Scripting.Dictionary
     
   'Armazenar total de nomes e sobrenomes cadastrados nas sheets
    cFN = Sheets(1).Range("A65000").End(xlUp).Row
    cLN = Sheets(2).Range("A65000").End(xlUp).Row
   
   'Definir o tamanho da lista de nomes
    max = 6
   
   'Loop para gerar nomes únnicos e armazenar num dictionary
   For i = 1 To max
       Randomize
       nr1 = Int((cFN - 1 + 1) * Rnd + 1)
       nr2 = Int((cLN - 1 + 1) * Rnd + 1)
       fn = Sheets(1).Range("A" & nr1).Value 
       ln = Sheets(2).Range("A" & nr2).Value
       Name = fn + " " + ln
       If Not d.Exists(i) Then
          d.Add i, Name
       End If
   Next
   
  ini = 2
  
  'Loop para popular planilha 1 com nomes armazenados no dictionary
  For Each element In d.Keys()
           Sheets(3).Range("A" & ini).Value = ini - 1
           Sheets(3).Range("B" & ini).Value = d(element)
           ini = ini + 1
  Next element

End Sub