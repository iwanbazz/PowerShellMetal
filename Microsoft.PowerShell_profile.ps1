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
function cdh() {cd C:\Users\Iwan}
function cu() {composer update}
function fed() {sudo Start-VM -Name Fedora}
function install() {sudo choco install -y $args}
function lnew() {laravel new $args}
function rh() {sudo Start-VM -Name Redhat}
function up() {sudo Install-WindowsUpdate; sudo choco upgrade all -y; scoop update *; composer global update; npm update -g}

# Alias other
function wa() {l wsl-alias add $args}
function wl() {l wsl-alias list}
function wr() {l wsl-alias remove $args}

# Alias wsl
function mstart() {wsl sudo service mongodb start}
function mstat() {wsl sudo service mongodb status}
function mstop() {wsl sudo service mongodb stop}
function nstart() {wsl sudo service nginx start}
function nstat() {wsl sudo service nginx status}
function nstop() {wsl sudo service nginx stop}
function pgstart() {wsl sudo service postgresql start}
function pgstat() {wsl sudo service postgresql status}
function pgstop() {wsl sudo service postgresql stop}
function pstart() {wsl sudo service php7.3-fpm start}
function pstat() {wsl sudo service php7.3-fpm status}
function pstop() {wsl sudo service php7.3-fpm stop}
function sqlstart() {wsl sudo service mysql start}
function sqlstat() {wsl sudo service mysql status}
function sqlstop() {wsl sudo service mysql stop}
function wstart() {nstart; pstart}
function wstop() {nstop; pstop}
function lstart() {wstart; sqlstart}
function lstop() {wstop; sqlstop}
