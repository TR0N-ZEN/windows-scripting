echo("hello world")
cd G:
copy G:\sqlite3.dir C:\
echo("sqlite3 copied into 'C:/sqlite3', now add environmentvariables")
setx sqlite3 C:\sqlite3\ /m
setx sqlite3 %PATH%