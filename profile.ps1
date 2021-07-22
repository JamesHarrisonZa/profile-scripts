# My Custom PowerShell profile.
# James Harrison
# Location: C:\Users\{username}\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
# OR C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1

# << Modules >>
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme 42

# << Aliases >>
# < General>
function Get-Clear { & cls $args }
New-Alias -Name c -Value Get-Clear -Force -Option AllScope
# < Git >
function Get-GitClean { & git clean -fd }
New-Alias -Name gc -Value Get-GitClean -Force -Option AllScope

function Get-GitCheckout { & git checkout $args }
New-Alias -Name gco -Value Get-GitCheckout -Force -Option AllScope

function Get-GitBranch { & git branch $args }
New-Alias -Name gb -Value Get-GitBranch -Force -Option AllScope

function Get-GitFetch { & git fetch $args }
New-Alias -Name gf -Value Get-GitFetch -Force -Option AllScope

function Get-GitPull { & git pull $args }
New-Alias -Name gpl -Value Get-GitPull -Force -Option AllScope

function Get-GitAdd { & git add --all $args }
New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope

# function Get-GitCommit { & git commit $args }
# New-Alias -Name gcm -Value Get-GitCommit -Force -Option AllScope

function Get-GitPush { & git push $args }
New-Alias -Name gp -Value Get-GitPush -Force -Option AllScope

function Get-GitPush { & git push --no-verify $args }
New-Alias -Name gpn -Value Get-GitPush -Force -Option AllScope
# < Npm >
function Get-Npm-Build { & npm run build $args }
New-Alias -Name nb -Value Get-Npm-Build -Force -Option AllScope

function Get-Npm-Start { & npm start $args }
New-Alias -Name ns -Value Get-Npm-Start -Force -Option AllScope

function Get-Npm-Test { & npm test $args }
New-Alias -Name nt -Value Get-Npm-Test -Force -Option AllScope

function Get-Npm-CleanInstall { & npm ci $args }
New-Alias -Name nci -Value Get-Npm-CleanInstall -Force -Option AllScope

function Get-Npm-Install { & npm i $args }
New-Alias -Name ni -Value Get-Npm-Install -Force -Option AllScope

function Get-Npm-ListGlobal { & npm list -g --depth 0 }
New-Alias -Name ng -Value Get-Npm-ListGlobal -Force -Option AllScope

# << Colours & welcome message >>
$colours = "DarkBlue", "DarkGreen", "DarkCyan", "DarkRed", "DarkMagenta", "DarkYellow", "Gray", "DarkGray", "Blue", "Green", "Cyan", "Red", "Magenta", "Yellow"
$pathColour = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$colour42 = Get-Random $colours

$GitPromptSettings.DefaultPromptPath.ForegroundColor = $pathColour

Write-Host '                                       ' -ForegroundColor $colour42
Write-Host '                                       ' -ForegroundColor $colour42
Write-Host '                                       ' -ForegroundColor $colour42
Write-Host '                                       ' -ForegroundColor $colour42
Write-Host '      /\\\       /\\\\\\\\\            ' -ForegroundColor $colour42
Write-Host '     /\\\\\     /\\\///////\\\         ' -ForegroundColor $colour42
Write-Host '    /\\\/\\\    \///      \//\\\       ' -ForegroundColor $colour42
Write-Host '   /\\\/\/\\\              /\\\/       ' -ForegroundColor $colour42
Write-Host '  /\\\/  \/\\\           /\\\//        ' -ForegroundColor $colour42
Write-Host ' /\\\\\\\\\\\\\\\\     /\\\//          ' -ForegroundColor $colour42
Write-Host ' \///////////\\\//    /\\\/            ' -ForegroundColor $colour42
Write-Host '            \/\\\     /\\\\\\\\\\\\\\\ ' -ForegroundColor $colour42
Write-Host '             \///     \/////////////// ' -ForegroundColor $colour42
Write-Host '                                       ' -ForegroundColor $colour42
Write-Host '                                       ' -ForegroundColor $colour42
Write-Host '                                       ' -ForegroundColor $colour42
