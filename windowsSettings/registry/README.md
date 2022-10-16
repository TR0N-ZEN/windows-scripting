| Path                                | registry path                 |
|-------------------------------------|-------------------------------|
| C:\Windows\system32\config\System   | (HKEY_CURRENT_CONFIG)         |
| C:\Windows\system32\config\SAM      | (HKEY_LOCAL_MACHINE\SAM)      |
| C:\Windows\system32\config\Security | (HKEY_LOCAL_MACHINE\Security) |
| C:\Windows\system32\config\Software | (HKEY_LOCAL_MACHINE\Software) |
| C:\Windows\system32\config\System   | (HKEY_LOCAL_MACHINE\System)   |
| C:\Windows\system32\config\Default  | (HKEY_USERS\.DEFAULT)         |
| C:\Users\Benutzername\ntuser.dat    | (HKEY_CURRENT_USER)           |

Console porgram REG for itneraction with the reigstry.

Intersting entries:
+ REG QUERY HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment /v Path

