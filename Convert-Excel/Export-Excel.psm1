function Export-Excel {
<#
.SYNOPSIS
Module for out PowersSell Object to Excel table
.DESCRIPTION
Example:
$Service = Get-Service
Export-Excel $Service -Path "$home\Desktop\out.xlsx" # path default
.LINK
https://github.com/Lifailon
#>
Param (
[Parameter(Mandatory = $True)] $Object,
$Path = "$home\Desktop\out.xlsx"
)
$TempCSV = "$env:TEMP\ConvertTo-Excel.csv"
$Delimiter=","
$Object | Export-Csv $TempCSV -Append -Encoding Default -Delimiter $Delimiter
$temp = (cat $TempCSV)[1..10000]
$temp > $TempCSV
$Excel = New-Object -ComObject excel.application
$WorkBook = $Excel.WorkBooks.Add(1)
$WorkSheet = $WorkBook.WorkSheets.Item(1)
$TxtConnector = ("TEXT;" + $TempCSV)
$Connector = $WorkSheet.QueryTables.add($TxtConnector,$WorkSheet.Range("A1"))
$QueryTables = $WorkSheet.QueryTables.item($Connector.name)
$QueryTables.TextFileOtherDelimiter = $Delimiter
$QueryTables.Refresh()
$QueryTables.Delete()
$WorkBook.SaveAs($Path)
$Excel.Quit()
Remove-Item $TempCSV
}