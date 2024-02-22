# Aliases
function list {
	eza -l --icons
}
function tree($command=2) {
	eza --tree --level=$command --icons
}

function grid {
	eza --grid --icons
}

Set-Alias ll list
Set-Alias llt tree
Set-Alias llg grid

# Load oh-my-posh theme
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\atomicMod.omp.json" | Invoke-Expression

# Load starship theme
Invoke-Expression (&starship init powershell)

# Load Terminal-Icons for ls
Import-Module -Name Terminal-Icons

#Functions
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function touch($command) {
	New-Item $command
}

function rm($command) {
	Remove-Item $command
}

# PSReadLine
Import-Module PSReadLine
Set-PSreadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView
