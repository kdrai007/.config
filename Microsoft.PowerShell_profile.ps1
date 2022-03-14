#Prompt
Import-Module posh-git
Import-Module oh-my-posh

$omp_config = Join-Path $PSScriptRoot ".\kunjdhari.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

#Terminal Icons
Import-Module -Name Terminal-Icons


#Alias


Set-Alias vim nvim 
Set-Alias g git
Set-Alias grep findstr
Set-Alias ll ls
Set-Alias touch ni
Set-Alias 'ls -r' 'dir -h'



# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
# Import-Module PSFzf
# Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

#Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
