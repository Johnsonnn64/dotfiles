# New system
These are the steps to follow after a fresh install of Arch </BR>

## Neovim
May have to do `:PackerSync` in nvim
```bash
git clone https://github.com/Johnsonnn64/gitnvim ~/.config/nvim
```

## zsh
Get 2 plugins from github
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zplugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/zplugins/zsh-autosuggestions
```
source /home/john/.config/zsh/.zprofile -> */etc/zsh/zprofile:*

export ZDOTDIR="/home/john/.config/zsh" -> */etc/zsh/zshenv*

## yay
```bash
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

## arch support (if using artix)
```bash
sudo pacman -S artix-archlinux-support
sudo pacman-key --populate archlinux
```

## Suckless Tools

### DWM
Download the dependencies
```bash
[sudo] pacman -S xorg xorg-xinit libxinerama imlib2
yay -S libxft-bgra nerd-fonts-jetbrains-mono
git clone https://github.com/Johnsonnn64/iamchad.git ~/.config/iamchad
mkdir ~/.local/share/fonts
cp ~/.config/iamchad/fonts/*.ttf ~/.local/share/fonts
cd ~/.config/iamchad/chadwm/ && sudo make clean install
```
### st and dmenu
```bash
git clone https://github.com/Johnsonnn64/newgitst.git
git clone https://github.com/Johnsonnn64/gitdmenu.git
```
`sudo make clean install` into each folders

## Enable hibernate
Get UUID of swap by `lsblk -f`
in `/etc/default/grub`
```conf
GRUB_CMDLINE_LINUX_DEFAUL="... resume=UUID='SWAP UUID'"
```
and in `/etc/mkinitcpio.conf`
```conf
HOOKS=(... filesystems 'resume' keyboard ...)
```
then do `sudo mkinitcpio -P && sudo update-grub`
and reboot

