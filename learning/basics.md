Commands in Powershell are formed Like
```
Verb-Noun
```
while __Verb__ &isin; { _Set_, _Get_, _Show_, _..._ } and  
while __Noun__ &isin; { _Help_, _Service_, _NetAdapter_,_Item_, _..._ }  
  
>```POWERSHELL
>Get-Service
>Get-NetAdapter
>Get-Service
>Get-Date
>```

--- 

If you want to get a list of all commands enter
```POWERSHELL
Get-Command
```

---

If you need help with a command for example with Get-Service enter
```POWERSHELL
Get-Help Get-Service
```

---

All commands with Verb _Get_ return data of some type, possible types are a(n)
+ value like from `Get-Date`
+ array of arbitrary objects like from `Get-Service`
+ ...

---


## the pipe operator: |
the pipe operator passes output of cmd-let1 to input of cmd-let2, cmd-let1 and cmd-let2 need to support the usage of the pipe operator
```
cmd-let1 | cmd-let2
```

this can be used in conjunction with filerting functions like:
+ `Get-Member`
	```powershell
	Get-Service | Get-Member
	```
	returns the attributes and methods the objects outputted by _Get-Service_ have.
+ `Where-Object`
	```POWERSHELL
	Get-Service | Where-Object Name "WSearch"
	```
	```POWERSHELL
	Get-Service | Where-Object Name -eq "WSearch"
	```
	```POWERSHELL
	Get-Service | Where-Object {$_.Name -eq "WSearch"}
	```
	all three return objects returned by _Get-Service_ where the attribute name is equal to "WSearch".
+ `Select-Object`
	```POWERSHELL
	Get-Service | Select-Object -Property DisplayName, Running, Status
	```
	returns objects returned by _Get-Service_ but displayed with properties _DisplayName_, _Running_ and _Status_ only.
+ `Sort-Object`
	```powershell
	Get-Service | Sort-Object status
	```
	sorts the objects returned by _Get-Service_ according to the value associated with the _attribute_ supplied to _Sort-Object_.


---

...

---
## regular expressions

```powershell
Get-NetAdapterAdvancedProperty * | where-object {$_.Name -match "Ethernet [0-9]" -and $_.DisplayName -match "Energy"}
Set-NetAdapterAdvancedProperty "Ethernet 2" -DisplayName "Energy Efficient Ethernet" -DisplayValue "off"
```