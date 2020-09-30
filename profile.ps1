# My Custom PowerShell profile.
# James Harrison
# Location: C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1

# << Modules >>
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme 42

# << Aliases >>
# < Git >
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
function Get-GitCommit { & git commit -ev $args }
New-Alias -Name gc -Value Get-GitCommit -Force -Option AllScope
function Get-GitPush { & git push $args }
New-Alias -Name gp -Value Get-GitPush -Force -Option AllScope
function Get-GitPush { & git push --no-verify $args }
New-Alias -Name gpn -Value Get-GitPush -Force -Option AllScope
# < Npm >
function Get-Npm-Start { & npm start $args }
New-Alias -Name ns -Value Get-Npm-Start -Force -Option AllScope
function Get-Npm-Test { & npm test $args }
New-Alias -Name nt -Value Get-Npm-Test -Force -Option AllScope
function Get-Npm-CleanInstall { & npm ci $args }
New-Alias -Name nci -Value Get-Npm-CleanInstall -Force -Option AllScope
function Get-Npm-Install { & npm ci $args }
New-Alias -Name ni -Value Get-Npm-Install -Force -Option AllScope

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
