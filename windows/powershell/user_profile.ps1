# Prompt
Import-Module Get-ChildItemColor
Import-Module Terminal-Icons

Invoke-Expression (&starship init powershell)
starship preset pastel-powerline -o C:\Users\bsadik\.config\starship.toml

# Alias
Set-Alias touch ni
Set-Alias ls Get-ChildItemColor

# Functions
function status {
  git status
}

function add {
  git add .
}

function commit {
  param (
    [string]$message
  )
  git commit -m $message
}

function push {
  git push origin main
}
