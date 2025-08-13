if (Get-Command oh-my-posh -ErrorAction SilentlyContinue) {
    oh-my-posh init pwsh | Invoke-Expression
}

if (Get-Command fnm -ErrorAction SilentlyContinue) {
    fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression
}
