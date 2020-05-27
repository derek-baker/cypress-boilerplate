# A system-wide install of VSCode might be in: "C:\Program Files\Microsoft VS Code\bin\code"
param(
    [string] $pathToVsCodeExe = ($Env:USERPROFILE + '\AppData\Local\Programs\Microsoft VS Code'),
    [string[]] $extensions = @("editorconfig.editorconfig", "dbaeumer.vscode-eslint")
)


try {
    $originalLocation = Get-Location
    Set-Location $pathToVsCodeExe
    $extensions | ForEach-Object {
        Invoke-Expression -Command "Code --install-extension $_ --force"
    }
    
}
catch {
    $_
}
finally {
    Set-Location $originalLocation    
}


