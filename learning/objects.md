
```powershell
[<object>] | Sort-Object <attribute>
```
will __sort__ the objects returned by Get-Service according to the value associated with the _attribute_ supplied to _Sort-Object_
e.g.
```powershell
Get-Service | Sort-Object status
```
  

```powershell
<object> | Select-Object -Property DisplayName, Running, Status
```
returns a copy of the given _object_ with the attributes _DisplayName_, _Running_, _Status_ only.