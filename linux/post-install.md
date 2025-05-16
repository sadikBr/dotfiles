# Things to do after installing linux for the first time.

## For arch linux, install AUR package manager.

- paru
    - `sudo pacman -S --needed base-devel git`
    - `git clone https://aur.archlinux.org/paru.git`
    - `cd paru`
    - `makepkg -si`

## Environment setup

- zsh `sudo pacman -S zsh`
    - oh-my-zsh
        - Install using curl: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    - zsh-syntax-highlighting
        - `sudo pacman -S zsh-syntax-highlighting`
        - Add the following line to the .zshrc: `source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`
    - zsh-autosuggestions
        - `sudo pacman -S zsh-autosuggestions`
        - Add the following line to the .zshrc: `source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh`
- nodejs
    - nvm
        - Install using curl: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash`
    - `nvm install --lts`
- deno
    - Install using curl: `curl -fsSL https://deno.land/install.sh | sh`
- nerd-fonts
    - `sudo pacman -S nerd-fonts`

## For every distro install the apps below using your package manager. (For me: pacman)

- Neovim
    - `sudo pacman -S neovim`
- Blender
    - `sudo pacman -S blender`
- Godot
    - `sudo pacman -S godot`
- Discord
    - `sudo pacman -S discord`
- Gapless
    - `paru -S gapless`
- Steam (enable 32bit library -> during installation or after)
    - `sudo pacman -S steam`
- Krita
    - `sudo pacman -S krita`
- Lutris
    - `sudo pacman -S lutris`
- Image Viewer (qView)
    - `paru -S qview`
- Meld
    - `sudo pacman -S meld`
- GIMP
    - `sudo pacman -S gimp`
- Graphs
    - `sudo pacman -S graphs`
- Parabolic
    - `paru -S parabolic`
- Thunderbird
    - `sudo pacman -S thunderbird`
- Zen Browser
    - `paru -S zen-browser-bin`
- Eza
    - `sudo pacman -S eza`
- Zed
    - `paru -S zed-bin`
- Okular
    - `sudo pacman -S okular`
- Inkscape
- Aseprite
- qBittorrent
- Upscaler
- Ghostty
- Timeshift
- KeePassXC
- Kodi
- Audacity
- OBS Studio
- Qalculate!
- Mission Center
- Virtual Machine
- Remote Viewer 
- osu!lazer

## Ghostty config

```config
theme=tokyonight_moon
font-family=JetBrainsMono Nerd Font
background-opacity=0.9
font-size=14
window-padding-x=4
window-padding-y=4
working-directory=/home/bsadik/dev
window-inherit-working-directory=true
window-decoration=false
font-feature=ligatures
```

## Aliases

```bash
alias ls="eza --icons=always --oneline"
alias cat="bat"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gpsh="git push origin main"
alias gpll="git pull origin main"
```
