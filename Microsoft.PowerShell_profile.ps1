Invoke-Expression (&starship init powershell)

Import-Module DockerCompletion
#Import-Module oh-my-posh
Import-Module posh-git
Import-Module PSReadLine
Remove-PSReadlineKeyHandler 'Ctrl+r'
Import-Module PSFzf
Import-Module PSScheduledJob
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
function dock() {wsl -d Ubuntu docker $args}
function e.() {explorer .}
function fed() {sudo Start-VM -Name Fedora}
function gc() {git clone $args}
function gl() {git pull}
function ins() {sudo choco install -y $args}
function iwando() {ssh iwan@134.209.101.188}
function lup() {npm install; npm run dev; composer install}
function lnew() {laravel new $args}
function rh() {sudo Start-VM -Name Redhat}
function rootdo() {ssh root@134.209.101.188}
function up() {sudo Install-WindowsUpdate -AcceptAll; sudo choco upgrade all -y; wsl -u root apt update; wsl -u root apt upgrade -y; scoop update *; flutter upgrade; composer global update; npm update -g}
function x() {exit}

# Alias other
function wa() {l wsl-alias add $args}
function wl() {l wsl-alias list}
function wr() {l wsl-alias remove $args}

# Alias wsl
function d() {wsl -d Debian -u root $args}
function f() {wsl -d fedoraremix -u root $args}
function k() {wsl -d kali-linux -u root $args}
function u() {wsl -d ubuntu -u root $args}
function dstart() {wsl -d Ubuntu -u root service docker start}
function dstat() {wsl -d Ubuntu -u root service docker status}
function dstop() {wsl -d Ubuntu -u root service docker stop}
function mstart() {wsl -d Ubuntu -u root service mongodb start}
function mstat() {wsl -d Ubuntu -u root service mongodb status}
function mstop() {wsl -d Ubuntu -u root service mongodb stop}
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
