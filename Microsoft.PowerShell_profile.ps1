# ~\Documents\PowerShell\Profile.ps1
# Windows PowerShell
Invoke-Expression (&starship init powershell)

Import-Module DockerCompletion
#Import-Module oh-my-posh
#Import-Module posh-git
Import-Module PSReadLine
Import-Module PSWindowsUpdate
#Set-Theme Paradox

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Alias
function art() {php artisan $args}
function cdh() {Set-Location C:\Users\Iwan}
function cu() {composer update}
function e.() {explorer .}
function fed() {sudo Start-VM -Name Fedora}
function ins() {sudo choco install -y $args}
function lnew() {laravel new $args}
function rh() {sudo Start-VM -Name Redhat}
function up() {sudo Install-WindowsUpdate -AcceptAll; sudo choco upgrade all -y; wsl -u root apt update; wsl -u root apt upgrade -y; scoop update *; flutter upgrade; composer global update; npm update -g}

# Alias other
function wa() {l wsl-alias add $args}
function wl() {l wsl-alias list}
function wr() {l wsl-alias remove $args}

# Alias wsl
function d() {wsl -d Debian -u root $args}
function f() {wsl -d fedoraremix -u root $args}
function k() {wsl -d kali -u root $args}
function u() {wsl -d ubuntu -u root $args}
function mstart() {wsl -u root service mongodb start}
function mstat() {wsl -u root service mongodb status}
function mstop() {wsl -u root service mongodb stop}
function nstart() {wsl -u root service nginx start}
function nstat() {wsl -u root service nginx status}
function nstop() {wsl -u root service nginx stop}
function pgstart() {wsl -u root service postgresql start}
function pgstat() {wsl -u root service postgresql status}
function pgstop() {wsl -u root service postgresql stop}
function pstart() {wsl -u root service php7.4-fpm start}
function pstat() {wsl -u root service php7.4-fpm status}
function pstop() {wsl -u root service php7.4-fpm stop}
function sqlstart() {wsl -u root service mysql start}
function sqlstat() {wsl -u root service mysql status}
function sqlstop() {wsl -u root service mysql stop}
function wstart() {nstart; pstart}
function wstop() {nstop; pstop}
function lstart() {wstart; sqlstart}
function lstop() {wstop; sqlstop}
