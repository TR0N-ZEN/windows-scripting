## filter
list of objects
```POWERSHELL
Get-Service | Where-Object {$_.CanPauseAndContinue -eq $true}
```
is eqivalent to
```POWERSHELL
Get-Service | Where-Object CanPauseAndContinue -eq $true
```

## reduce
objects
```POWERSHELL
Get-Service | Select-Object -Property DisplayName, Running, Status
```
returns Objects returned by _Get-Service_ but with properties _DisplayName_, _Running_ and _Status_ only.