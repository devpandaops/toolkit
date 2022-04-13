:: Install choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"

:: Install all the packages
:: choose: visual studio, office, .net core, .net, rider tools

:::: Dev tools
choco install git.install -y
choco install vscode -y
choco install jre8 -y
choco install postman -y
choco install docker-engine -y
choco install nodejs.install -y

:::: Utilities
choco install googlechrome -y
choco install zoom -y
choco install adobereader

:::: Other
choco install notepadplusplus -y


