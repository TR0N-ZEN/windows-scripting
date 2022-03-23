Invoke-WebRequest -Uri "https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1639666903~acl=/*~hmac=918f33057316005f2f9cf1b98bbd98945034054e83ffe389e77793a5c45e80d4" -O "MSIAfterburner.zip" -UseBasicParsing  # download zipped MSI Afterburner installer
Expand-Archive "MSIAfterburner.zip"
. ./MSIAfterburner/MSIAfterburnerSetup*.exe

#https://download.heise.de/files/lvZujkGWyangWJZ00X9m5A/266081/imdiskinst.exe?expires=1640230424

# Invoke-WebRequest -Uri 'https://downloads.haskell.org/~ghc/9.0.2/ghc-9.0.2-x86_64-unknown-mingw32.tar.xz' -O 'ghc-9.0.2-x86_64-unknown-mingw32.tar.xz' -UseBasicParsing


Invoke-WebRequest -Uri 'https://equalizerapo.com/EqualizerAPO64-1.2.1.zip' -O 'EqualizerAPO64-1.2.1.zip' -UseBasicParsing
Expand-Archive 'EqualizerAPO64-1.2.1.zip'
. .\EqualizerAPO64-1.2.1\EqualizerAPO64-1.2.1.exe