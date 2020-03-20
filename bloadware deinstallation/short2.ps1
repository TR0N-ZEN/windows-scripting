<# Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online #>
$exceptions = @('*store*', '*netflix*'. '*whatsapp*', '*spotify*', '*twitter*')
Get-AppXPackage -allusers | where-object {$_.name -notlike $exceptions[0..-1]} | Remove-AppxPackage