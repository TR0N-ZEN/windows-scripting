# msi afterburner
Invoke-WebRequest -Uri 'https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1639666903~acl=/*~hmac=918f33057316005f2f9cf1b98bbd98945034054e83ffe389e77793a5c45e80d4' -O 'MSIAfterburner.zip' -UseBasicParsing  # download zipped MSI Afterburner installer
Expand-Archive 'MSIAfterburner.zip'
. "./MSIAfterburner/MSIAfterburnerSetup*.exe"

# ramdisk software
Invoke-WebRequest -Uri 'https://download.heise.de/files/lvZujkGWyangWJZ00X9m5A/266081/imdiskinst.exe?expires=1640230424' -O 'imdisk.installer.exe'
. '.\imdisk.installer.exe'

# glasgow haskell compiler for haskell
# Invoke-WebRequest -Uri 'https://downloads.haskell.org/~ghc/9.0.2/ghc-9.0.2-x86_64-unknown-mingw32.tar.xz' -O 'ghc-9.0.2-x86_64-unknown-mingw32.tar.xz' -UseBasicParsing
# . '.\ghc-9.0.2-x86_64-unknown-mingw32.tar.xz'

# audio equalizer
Invoke-WebRequest -Uri 'https://equalizerapo.com/EqualizerAPO64-1.2.1.zip' -O 'EqualizerAPO64-1.2.1.zip' -UseBasicParsing
Expand-Archive 'EqualizerAPO64-1.2.1.zip'
. '.\EqualizerAPO64-1.2.1\EqualizerAPO64-1.2.1.exe'

# fan control  
Invoke-WebRequest -Uri 'https://github.com/Rem0o/FanControl.Releases/blob/master/FanControl.zip?raw=true' -O 'FanControl.zip' -UseBasicParsing
Expand-Archive 'FanControl.zip'
. '.\FanControl\FanControl.exe'

# battle net
Invoke-WebRequest -Uri 'https://www.battle.net/download/getInstallerForGame?os=win&gameProgram=BATTLENET_APP&version=Live&id=undefined' -OutFile  BattleNet.installer.exe
. '.\BattleNet.installer.exe'

