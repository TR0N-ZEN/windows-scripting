
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