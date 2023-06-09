function Import-Excel {
<#
.SYNOPSIS
Module for import Excel table to Hashtable
.DESCRIPTION
Example:
Import-Excel -Path "$home\Desktop\out.xlsx"
.LINK
https://github.com/Lifailon
#>
Param (
[Parameter(Mandatory = $True)]$Path
)
$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $false
$ExcelWorkBook = $excel.Workbooks.Open($path)
$ListsIndex = $ExcelWorkBook.Sheets | select Index
$Index1 = $ListsIndex[0].Index
$ExcelWorkSheet = $ExcelWorkBook.Sheets.Item($Index1)
$Range = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$Arr = $Range.ToCharArray()
$Columns = New-Object System.Collections.Generic.List[System.Object]
$Arr | %{
if ($ExcelWorkSheet.Range("$_"+"1").Text.Length -ne 0) {
$Columns.Add([PSCustomObject]@{
Column = $_;
Value = $ExcelWorkSheet.Range("$_"+"1").Text
})
}
}
foreach ($Col in $Columns) {
$Column = $Col.Column
$Value = $Col.Value
$ColVal = @()
2..1000 | %{
if ($ExcelWorkSheet.Range("$Column"+"$_").Text.Length -ne 0) {
$ColVal += @($ExcelWorkSheet.Range("$Column"+"$_").Text)
}
}
$ht += @{$Value = $ColVal}
}
$ht
$ExcelWorkBook.close($true)
$Excel.Quit()
}