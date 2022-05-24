# sources

+ https://docs.microsoft.com/en-us/powershell/scripting/learn/tutorials/01-discover-powershell?view=powershell-7.2


---

# datatypes

As far as I discovered every piece of data is an object and thus has members of the types *Property*, *Method*, *Alias-Method*, *Script-Method*.  

## (primitive) values
```powershell
New-Variable -Name "zipcode" -Value 98033
New-Variable -Name Max -Value 256 -Option ReadOnly
New-Variable -Name max -Value 1024 -Force
New-Variable -Name 'TestVariable' -Value 'Test Value' -Option AllScope,Constant
New-Variable -Name counter -Visibility Private
Get-Variable c* # the variable counter wont be listed
Get-Counter
```

## objects
## arrays 
  ```powershell
  $data =- @()
  ```
  ```powershell
  $data = @('Zero','One','Two','Three')
  ```
  ```powershell
  $data = @(
      'Zero',
      'One',
      'Two',
      'Three'
  )
  ```
  <details>
  the array object has predefined methods like `count`
  ```powershell
  PS> $data.count
  4
  ```
  
  ```powershell
  PS> $data[1]
  One
  PS> $data[-1]
  Three
  PS> $data[1..3]
  One
  Two
  Three
  PS> $data[3..1]
  Three
  Two
  One
  PS> $data[3,0,3]
  Three
  Zero
  Three
  ```
  
  ```powershell
  PS> $data.GetUpperBound(0)
  3
  PS> $data[ $data.GetUpperBound(0) ]
  Three
  ###############################
  # if elements of an array are objects
  PS> $data | ForEach-Object {$_.LastName}
  Marquette
  Doe
  Mustermann
  PS> $data | Select-Object -ExpandProperty LastName
  Marquette
  Doe
  Mustermann
  PS> $data.LastName
  Marquette
  Doe
  Mustermann
  #########
  PS> $data | Where-Object {$_.FirstName -eq 'Kevin'}
  FirstName LastName
  -----     ----
  Kevin     Marquette

  $data | Where FirstName -eq Kevin
  
  $data.Where({$_.FirstName -eq 'Kevin'})
  ```
  
  </details>

  more @https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-arrays?view=powershell-7.2

---

# commands

a `<command>` in Powershell is formed Like
```
Verb-Noun
```
while **Verb** &isin; { _Set_, _Get_, _Show_, _..._ } and  
while **Noun** &isin; { _Help_, _Service_, _NetAdapter_,_Item_, _..._ }  
  
>```POWERSHELL
>Get-Service
>Get-NetAdapter
>Get-Service
>Get-Date
>```

--- 


```POWERSHELL
Get-Command # If you want to get a list of all commands enter
# Since this command helps with discovery and understanding commands the following may be said.

# for more information about `Get-Command` type:
Get-Help Get-Command 

# lists the commands using parameters/accepting arguments whichs datatype is `<x>`.  
Get-Command -ParameterType <x>

```

---

All commands with Verb _Get_ return data of some type, possible types are a(n)
+ **value** like from `$(Get-Date).ToString()`
+ **object** like from `Get-Date`
+ **array** of arbitrary objects like from `Get-Service`
+ ...

---

# the pipe operator `|`

the pipe operator passes output of cmd-let1 to input of cmd-let2, cmd-let1 and cmd-let2 need to support the usage of the pipe operator
```
<cmd-let1> | <cmd-let2>
```
<details>

this can be used in conjunction with filtering functions like:
+ `Get-Member`
  ```powershell
  Get-Service | Get-Member
  ```
  returns the attributes and methods the objects outputted by _Get-Service_ have.
+ `Where-Object`
  ```POWERSHELL
  Get-Service | Where-Object Name 'WSearch'
  ```
  ```POWERSHELL
  Get-Service | Where-Object Name -eq 'WSearch'
  ```
  ```POWERSHELL
  Get-Service | Where-Object {$_.Name -eq 'WSearch'}
  ```
  all three return objects returned by _Get-Service_ where the attribute name is equal to "WSearch".
+ `Select-Object`
  ```POWERSHELL
  Get-Service | Select-Object -Property DisplayName, Running, Status
  ```
  returns objects returned by _Get-Service_ but displays their properties _DisplayName_, _Running_ and _Status_ only.
+ `Sort-Object`
  ```powershell
  Get-Service | Sort-Object status
  ```
  sorts the objects returned by _Get-Service_ according to the value associated with the _parameter_ supplied to _Sort-Object_.
+ `ForEach-Object`
  ```powershell
  'x', 'y' | ForEach-Object { echo $_ }
  ```
+ `<command>`
  ```powershell
  Get-Appxpackage | where-object { $_.Name -match 'Zune' } | Remove-AppxPackage
  ```
  commands with the same noun usually take ones output as input for another
  or you check for commands with a specific parameter type `<x>` with
  ```powershell
  Get-Command -ParameterType <x>
  ```
</details>

---

# regular expressions

```powershell
Get-NetAdapterAdvancedProperty * | where-object {$_.Name -match "Ethernet [0-9]" -and $_.DisplayName -match "Energy"}
Set-NetAdapterAdvancedProperty "Ethernet 2" -DisplayName "Energy Efficient Ethernet" -DisplayValue "off"
```

---

# loops

```powershell
for ($i=1;$i -lt 5: $i++)
{
  Write-Output "Logging $i"
  Write-Output 'Loggng $i'
  Start-Sleep -Seconds $i
}
```

```powershell
$number = Get-Random -Minimum 1 -Maximum 10
do 
{
  $guess = Read-Host -Prompt "What is your guess?"
  if     ($guess -lt $number) { Write-Output 'Too low.' }
  elseif ($guess -gt $number) { Write-Output 'Too big.' }
}
until ($guess -eq $number)
```

```powershell
do 
{
  $guess = Read-Host -Prompt "What is your guess?"
  if     ($guess -lt $number) { Write-Output 'Too low.' }
  elseif ($guess -gt $number) { Write-Output 'Too big.' }
}
while ($guess -ne $number)
```

```powershell
$date = Get-Date -Date 'November 22'
while ($date.DayOfWeek -ne 'Thursday')
{
  $date = $date.AddDays(1)
}
Write-Output $date
```

```powershell
for ($i=1;$i -lt 10: $i++)
{
  if ($i -eq 3) { continue }
  Write-Output "Logging $i"
  Start-Sleep -Seconds $i
  if ($i -eq 4) { break }
}
```
`continue` skips the the current iteration and continues with the next iteration
by `break` the direct enclosing loop is exited

```powershell
foreach ($Parameter in $ParameterName)
```

---
# function definition

```powershell
function Get-Version {
  $PSVersionTable.PSVersion
}
```

----

#

```powershell

```

----

#

```powershell

```
