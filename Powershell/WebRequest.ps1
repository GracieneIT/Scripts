$URL = "https://www.fundsexplorer.com.br/ranking"
$WebRequest = Invoke-WebRequest $URL
$TableNumber = 0

Remove-Item C:\Temp\out.csv -force

function Mount_Table{
## Extract the tables out of the web request

$tables = @($WebRequest.ParsedHtml.getElementsByTagName("TABLE"))

$table = $tables[$TableNumber]

$titles = @()

$rows = @($table.Rows)

$Report = New-Item -type file -force C:\Temp\out.csv


## Go through all of the rows in the table

foreach($row in $rows)

{
    $cells = @($row.Cells)

    ## If we've found a table header, remember its titles

    if($cells[0].tagName -eq "TH")

    {

        $titles = @($cells | % { ("" + $_.InnerText).Trim() -replace "`r`n",' '} ) -join ';'| Out-File c:\Temp\out.csv
		 continue
    }

   
	## If we haven't found any table headers, make up names "P1", "P2", etc.

    if(-not $titles)

    {
        $titles = @(1..($cells.Count + 2) | % { "P$_" })
        $titles 
    }

    ## Now go through the cells in the the row. For each, try to find the

    ## title that represents that column and create a hashtable mapping those

    ## titles to content

    $resultObject = [Ordered] @{}

    for($counter = 0; $counter -lt $cells.Count; $counter++)

    {

        $title = $titles[$counter]

        if(-not $title) { continue }

        #$resultObject[$title] = ("" + $cells[$counter].InnerText).Trim() 
   		#$resultObject[$title] = @($cells | % { ("" + $_.InnerText ).Trim() -replace "`r`n",' '}) -join ',' | Out-File c:\Temp\out.csv -Append
		
		$resultObject[$title] = @($cells | % { ("" + $_.InnerText ).Trim() -replace "`r`n",' '}) -join ';'
	 	
    }
	#$resultObject[$title] | Select-Object -unique | Out-File c:\Temp\out.csv -Append
	$MyArray = $resultObject[$title] | Select-Object -unique
	$MyArray | Out-File c:\Temp\out.csv -Append
	
	Write-Host $resultObject[$title]

	
	## And finally cast that hashtable to a PSCustomObject

    [PSCustomObject] $resultObject
}
}

Mount_Table | Format-Table -AutoSize