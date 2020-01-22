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
function ins() {sudo choco install -y $args}
function iwando() {ssh iwan@134.209.101.188}
function lup() {npm install; npm run dev; composer install}
function lnew() {laravel new $args}
function rh() {sudo Start-VM -Name Redhat}
function rootdo() {ssh root@134.209.101.188}
function up() {sudo Install-WindowsUpdate -AcceptAll; sudo choco upgrade all -y; scoop update *; flutter upgrade; composer global update; npm update -g; dup; fup; kup; uup}
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
function dup() {d apt update; d apt upgrade -y; d apt dist-upgrade -y; d apt autoremove -y}
function fup() {f dnf upgrade -y; f dnf clean all}
function kup() {k apt update; k apt upgrade -y; k apt dist-upgrade -y; k apt autoremove -y}
function uup() {u apt update; u apt upgrade -y; u apt dist-upgrade -y; u apt autoremove -y}
function dstart() {u service docker start}
function dstat() {u service docker status}
function dstop() {u service docker stop}
function mstart() {u service mongodb start}
function mstat() {u service mongodb status}
function mstop() {u service mongodb stop}
function nstart() {d service nginx start}
function nstat() {d service nginx status}
function nstop() {d service nginx stop}
function pgstart() {d service postgresql start}
function pgstat() {d service postgresql status}
function pgstop() {d service postgresql stop}
function pstart() {d service php7.4-fpm start}
function pstat() {d service php7.4-fpm status}
function pstop() {d service php7.4-fpm stop}
function sqlstart() {d service mysql start}
function sqlstat() {d service mysql status}
function sqlstop() {d service mysql stop}
function wstart() {nstart; pstart}
function wstop() {nstop; pstop}
function lstart() {wstart; sqlstart}
function lstop() {wstop; sqlstop}
