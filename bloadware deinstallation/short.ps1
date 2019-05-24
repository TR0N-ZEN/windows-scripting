<# Set-ExecutionPolicy Unrestricted | a #>
Get-AppXPackage -allusers | where-object {$_.name -notlike '*store*' -and '*netflix*' -and '*whatsapp*' -and '*spotify*' -and '*twitter*' -and '*gmx*' -and '*word*'} | Remove-AppxPackage
<# Set-ExecutionPolicy Restricted | a #>