Attribute VB_Name = "macro_Arr"
Sub GerarNomes_Array()
'Created em: 04-11-2020
'Developed by: G2SC
'Last update: 04-11-2020
'Note: O script abaixo colocará no Sheets(1) o resultado da combinação de nome com sobrenome. Caso sua esta sheet já esteja
'sendo utilizada, alterar o número do índice no código (linha 62 e 63).

   Dim i, j, max, nr1, nr2 As Integer
   Dim fn, ln As String
   Dim d As Scripting.Dictionary
   Dim element As Variant
   Dim fName(10)
   Dim lName(10)
   
   Set d = New Scripting.Dictionary
   
   'Populando array de primeiro nome
   fName(0) = "Regina"
   fName(1) = "Clara"
   fName(2) = "Roberta"
   fName(3) = "Carolina"
   fName(4) = "Rita"
   fName(5) = "Joana"
   fName(6) = "Luciana"
   fName(7) = "Maria"
   fName(8) = "Livia"
   fName(9) = "Silvia"
   fName(10) = "Paola"
   
   'Populando array de sobrenome
   lName(0) = "Loureiro"
   lName(1) = "Sampaio"
   lName(2) = "Mendes"
   lName(3) = "Soares"
   lName(4) = "Silva"
   lName(5) = "Carvalho"
   lName(6) = "Fontes"
   lName(7) = "Bitencourt"
   lName(8) = "Menezes"
   lName(9) = "Bardot"
   lName(10) = "Silveira"
 
   
   'Criando uma lista de apenas 6 nomes completos
   For i = 1 To 6
       Randomize
       nr1 = Int((10 - 1 + 1) * Rnd + 1)
       nr2 = Int((10 - 1 + 1) * Rnd + 1)
       fn = fName(nr1)
       ln = lName(nr2)
       Name = fn + " " + ln
       If Not d.Exists(i) Then
          d.Add i, Name
       End If
   Next
   
   
  'Populando Planilha 1 
  ini = 2
  For Each element In d.Keys()
           Sheets(1).Range("A" & ini).Value = ini - 1
           Sheets(1).Range("B" & ini).Value = d(element)
           ini = ini + 1
  Next element

End Sub