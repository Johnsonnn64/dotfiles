# dotfiles

my dotfiles </BR>
first time I am writing a README.md file </BR>
basically a guide for myself whenever I format my system

# before everything

- sudo pacman -S
  - git
  - nvim
  - zsh
  - web browser (qutebrowser)
  - brave-bin (optional browser)

## nvim (text editor)

nvim just seems a better choice now. Maybe nano for a backup just in case nvim breaks or even vi </BR>
config files for neovim

```sh
git clone https://github.com/Johnsonnn64/gitnvim ~/.config/nvim
```

catppuccin color scheme customize

```sh
mv mapper.lua ~/.config/nvim/autoload/plugged/catppuccin/lua/catppuccin/core/mapper.lua

mv config.lua ~/.config/nvim/autoload/plugged/catppuccin/lua/catppuccin/config.lua
```

## zsh (shell)

git clone 2 plugins used

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zplugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/zplugins/zsh-autosuggestions
```

/etc/zsh/</BR>
source /path/to/.zprofile -> /etc/zsh/zprofile</BR>
export ZDOTDIR="~/.config/zsh" -> /etc/zsh/zshenv

## DWM (window manager)

the repo Johnsonnn64/iamcahd is my DWM

```sh
git clone https://github.com/Johnsonnn64/iamcahd ~/workspace/suckless/iamchad

cd ~/workspace/suckless/iamchad && sudo make install
```

(note: got to tweak some settings in .xinitrc and ../scripts/autoload to match dir of iamchad)

## dmenu (app launcher)

```sh
git clone https://github.com/Johnsonnn64/gitdmenu ~/workspace/suckless/gitdmenu

cd ~/workspace/suckless/gitdmenu && sudo make install
```

## ST (terminal)

customized ST build of siduck

```sh
git clone https://github.com/Johnsonnn64/newgitst ~/workspace/suckless/newgitst

cd ~/workspace/suckless/newgitst && sudo make install
```

## bin

shell scripts

```sh
mkdir ~/.local/bin

mv bin ~/.local/bin
```

## breakings

when things break, just search in the web and fix it. </BR>
when fixed, document in this README

## to end

download things like: picom, yay, dunst, discord, taskwarrior, etc. </BR>
my font: ttf-font-awesome
ttf-hanazono (japanese kanji)
ttf-joypixels
noto-fonts
adobe-source-han-sans-jp-fonts
adobe-source-han-sans-kr-fonts
nerd-fonts-jetbrains-mono (aur)

### things not written here (for new document)

### fixes and workarounds
youtube-music + playerctl works with

```bash
export $(dbus-launch)
```
in the zprofile </BR>
</BR>

if in artix, do

```bash
sudo pacman -S artix-archlinux-support
sudo pacman-key --populate archlinux
```

then edit /etc/pacman.d/mirrorlist-arch
