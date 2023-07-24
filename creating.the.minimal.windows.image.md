# creating minimal windows image

Download **MSMG Toolkit**.  
Double click the **Start.cmd** file.  
Choose `[1]   Source` in the `MSMG ToolKit - Main Menu`,  
then `[3]   Extract Source from DVD ISO Image`in the `MSMG ToolKit - Source Menu`.  
Then convert the DVD/sources/install.esd file to and .wim file.  
# 'https://www.itechguides.com/convert-esd-to-wim/'.  

```powershell
Get-WindowsImage -ImagePath "E:\sources\install.esd"
Export-WindowsImage -SourceImagePath E:\sources\install.esd -SourceIndex 7 -DestinationImagePath C:\WIMFiles\export.wim -CheckIntegrity
```
