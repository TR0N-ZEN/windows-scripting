In Powershell there exist  
*CommandType*s *cmdlet*s ("command lets") and *function*s and
*DataTypes*.  

the cmdlet `Get-Service` accepts is described by
```POWERSHELL
Get-Service [-ComputerName <System.String[]>] [-DependentServices] -DisplayName <System.String[]> [-Exclude <System.String[]>] [-Include <System.String[]>] [-RequiredServices] [<CommonParameters>]
```
where everything written between brace like these `[]` is optional,  
these braces are not to be written in since they are used to describe the syntax of the cmdlet.  

`ComputerName`, `DependentServices`, `DisplayName`, `Exclude`, `RequiredServices` so all text preceeded by a dash  
is called a `Flag`.  