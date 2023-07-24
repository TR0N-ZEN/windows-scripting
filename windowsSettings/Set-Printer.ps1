# Get-Printer | Select-Object -Property Name
# Rename-Printer 'Canon TR4500 series' 'P1 USB'
# Remove-Printer 'Canon TR4500 series FAX'

Set-PrintConfiguration -PrinterName 'Canon TR4500 series' -Collate $true -Color $false -DuplexingMode 'TwoSidedLongEdge' -PaperSize 'A4'