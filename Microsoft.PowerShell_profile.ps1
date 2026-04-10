function Add-Timestamp {
    process {
        Write-Output "$([string]::Format('{0:HH:mm:ss.fff} -- {1}', (Get-Date), $_))"
    }
}

# https://github.com/ajeetdsouza/zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
Set-Alias -Name cd -Value z -Option AllScope -Force

# https://github.com/eza-community/eza
function eza-icons { eza --icons=always -l $args }
Set-Alias -Name ls -Value eza-icons -Option AllScope -Force

Set-Alias -Name vim -Value nvim -Force


# OPENSPEC:START - OpenSpec completion (managed block, do not edit manually)
. "C:\Users\HarveyWilliams\Documents\PowerShell\OpenSpecCompletion.ps1"
# OPENSPEC:END
