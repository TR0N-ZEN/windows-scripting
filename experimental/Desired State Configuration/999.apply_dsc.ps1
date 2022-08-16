

Start-Service -Name WinRM
Start-DscConfiguration -Path .\GamingMinimal\ -wait -verbose
Start-DscConfiguration -Path .\GamingMinimal\ -wait -verbose -Force
#Start-DscConfiguration -Path .\MyDscConfiguration\ -wait -verbose
#Start-DscConfiguration -Path .\MyDscConfiguration\ -wait -verbose -Force
Stop-Service -Name WinRM
Set-ExecutionPolicy Restricted
