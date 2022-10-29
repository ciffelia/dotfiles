# Source: https://stackoverflow.com/a/29424207
Function Test-CommandExists($name) {
  [bool](Get-Command -Name $name -ErrorAction SilentlyContinue)
}

Function which($name) {
  $command = Get-Command -Name $name -ErrorAction SilentlyContinue
  if ($command) {
    $command.Definition
  }
}

# cd -> pushd
Set-Alias -Name cd -Value pushd -Option AllScope

# Use curl from scoop, instead of one in C:\Windows\System32
Set-Alias curl ~\scoop\shims\curl.exe

Set-Alias ls lsd
Function la() {
  lsd -a $args
}
Function ll() {
  lsd -la $args
}

# Chocolatey
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Volta
if (Test-CommandExists("volta")) {
  (& volta completions powershell) | Out-String | Invoke-Expression
}

# Starship
if (Test-CommandExists("starship")) {
  Invoke-Expression (&starship init powershell)
}
