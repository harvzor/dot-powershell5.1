# Stop Powershell release messages
[System.Environment]::SetEnvironmentVariable('POWERSHELL_UPDATECHECK', 'Off', 'User')

# https://github.com/ajeetdsouza/zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
Set-Alias -Name cd -Value z -Option AllScope -Force

# https://github.com/eza-community/eza
function eza-icons { eza --icons=always -l $args }
Set-Alias -Name ls -Value eza-icons -Option AllScope -Force

Set-Alias -Name vim -Value nvim -Force

# OPENSPEC:START - OpenSpec completion (managed block, do not edit manually)
. "C:\Users\Harve\Documents\PowerShell\OpenSpecCompletion.ps1"
# OPENSPEC:END