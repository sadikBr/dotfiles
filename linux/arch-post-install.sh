#!/bin/zsh

echo "Arch Linux Post Install Script"

# Installing an AUR package manager. (paru)
echo "Installing paru (AUR package manager)"
sudo pacman -S needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

cd ~

# Installing all applications I use.
echo "Starting the installation of user applications and dev tools...."

## Installing zsh
echo "Installing the ZSH shell"
sudo pacman -S zsh

### Installing oh-my-zsh
echo "Installing OH-MY-ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Installing zsh-syntax-highlighting
echo "Installing ZSH SYNTAX HIGHLIGHTING"
sudo pacman -S zsh-syntax-highlighting
echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> .zshrc

### Installing zsh-autosuggestions
sudo pacman -S zsh-autosuggestions
echo "Installing ZSH AUTOSUGGESTIONS"
echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh" >> .zshrc

## Installing nodejs
echo "Installing NodeJS environment"
### Installing nvm
echo "Installing NVM (Node Version Manager)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
### Installing nodejs
echo "Installing NodeJS"
nvm install --lts

## Installing deno
echo "Installing Deno"
curl -fsSL https://deno.land/install.sh | sh

## Installing nerd-fonts
echo "Installing Nerd Fonts"
sudo pacman -S nerd-fonts

## Installing GUI Applications
