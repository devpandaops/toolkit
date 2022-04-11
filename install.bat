:: Install choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"

:: Install all the packages
:: choose: visual studio, office, .net core, .net, rider tools

:::: Dev tools
choco install git.install -y
choco install gitkraken
choco install vscode -y
choco install jre8 -y
choco install iisexpress -y
choco install mysql -y
choco install mysql.workbench -y
choco install postman -y
::choco install docker-desktop -y
choco install nodejs.install -y

:::: Utilities
choco install googlechrome -y
choco install slack -y
choco install zoom -y
choco install adobereader
choco install dropbox -y
choco install telegram.install -y

:::: Other
::choco install lenovo-thinkvantage-system-update -y
choco install 7zip.install -y
choco install lightshot -y
choco install whatsapp -y
choco install notepadplusplus -y

@REM choco install git.install -y --params "/GitAndUnixToolsOnPath /NoAutoCrlf /WindowsTerminal"
call refreshenv
rem always have Linux line endings in text files
git config --global core.autocrlf input
rem support more than 260 characters on Windows
rem See https://stackoverflow.com/a/22575737/873282 for details
git config --global core.longpaths true
rem some color and diff tweaks
rem   Use SVN's ||| also in git
rem   See https://git-scm.com/docs/git-config#Documentation/git-config.txt-mergeconflictStyle for details
git config --global merge.configStyle "diff3"
rem Always push to the branch we pulled from
rem   See https://git-scm.com/docs/git-config#Documentation/git-config.txt-pushdefault for details
git config --global push.default upstream
git config --global color.diff.new "green bold"
git config --global color.status.updated "green bold"
git config --global color.branch.current "green bold"
rem Sort branches at "git branch -v" by committer date
git config --global branch.sort -committerdate

