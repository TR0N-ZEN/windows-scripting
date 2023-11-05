boot from usb flashed with windows iso
press shift+f10 to start a console 

start diskpart `diskpart`

select disk where boot partition shall be created 
```
select disk 99
create partition efi size=100 offset=1024
```

select the newky created partition

```
select partition 99
format quick fs=fat32 label='System'
```

assign letter g to the boot partition and letter c to the one hosting windows files
```
select partition 99
assign letter g:
select partition 98
assign letter c:
```

exit out of diskpart `exit`


recover boot files to boot partition
```
bcdboot c:\windows /s g: /f ALL
```

verify `bootrec /scanos`

and do something i dont know why `bootrec /fixmbr`