# dotfiles
my dotfiles </BR>
first time I am writing a README.md file </BR>
basically a guide for myself whenever I format my system

# before everything
* sudo pacman -S 
  * git
  * nvim
  * zsh

## nvim (text editor)
nvim just seems a better choice now. Maybe nano for a backup just in case nvim breaks or even vi </BR>
config files for neovim 
```
git clone https://github.com/Johnsonnn64/gitnvim ~/.config/nvim
```

## zsh (shell)
move zshrc into .config and make dir for plugins
```
mv ~/dotfiles/zsh ~/.config

mkdir ~/.config/zsh/zplugins
```
git clone 3 plugins used
```
git clone https://github.com/jeffreytse/zsh-vi-mode.git ~/.config/zsh/zplugins/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zplugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/zplugins/zsh-autosuggestions
```
/etc/zsh/
source /path/to/.zprofile -> /etc/zsh/zprofile
export ZDOTDIR="~/.config/zsh"

## DWM (window manager)
the repo Johnsonnn64/iamcahd is my DWM 
```
git clone https://github.com/Johnsonnn64/iamcahd ~/workspace/suckless/iamchad

cd ~/workspace/suckless/iamchad && sudo make install
```
(note: got to tweak some settings in .xinitrc and ../scripts/autoload to match dir of iamchad)

## ST (terminal)
customized ST build of siduck 
```
git clone https://github.com/Johnsonnn64/newgitst ~/workspace/suckless/newgitst

cd ~/workspace/suckless/newgitst && sudo make install
```

