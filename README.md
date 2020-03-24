My neovim config for python and markdown dev. For the python autocomplete to work, the installation of the neovim :

```
sudo apt install neovim
pip install neovim

# then clone this config repo in ~/.config/nvim
```

Also to install vim-plug and nodejs:

```
# vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# nodejs
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs
```

It's also useful to install zsh, oh-my-zsh and conda to manage python envs:

```
# zsh
sudo apt install zsh

# oh-my-zsh
sudo apt install git
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# add history-substring-search in zsh plugins (.zshrc)

# conda
# download installer, then :
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
conda init zsh
```

If using python envs, make sure the env is activated before launching neovim so it can find all packages in the env.

Inside neovim:

```
:PlugInstall
:CocInstall coc-python
```

Install different kernel version on ubuntu, go to https://kernel.ubuntu.com/~kernel-ppa/mainline/ and select the wanted kernel version, download these files (this example is for 4.20.17):
- linux-headers-4.20.17-042017_4.20.17-042017.201903190933_all.deb
- linux-headers-4.20.17-042017-generic_4.20.17-042017.201903190933_amd64.deb
- linux-image-unsigned-4.20.17-042017-generic_4.20.17-042017.201903190933_amd64.deb
- linux-modules-4.20.17-042017-generic_4.20.17-042017.201903190933_amd64.deb

Put all these files in the same folder, ```cd``` into it and run:
```
sudo dpkg -i *.deb
```

After this it is possible to boot using this kernel with the grub menu (e.g. ```esc``` during boot).

To set the last booted kernel as default, edit ```/etc/default/grub``` and change these options:
```
 GRUB_DEFAULT=saved
 GRUB_SAVEDEFAULT=true
```

To fix output sound not varying with the volume slider (e.g. only mute or not muted output levels), put this before the PCM block in ```/usr/share/pulseaudio/alsa-mixer/paths/analog-output.conf.common```:
```
[Element Master]
switch = mute
volume = ignore
```

To remove the "can't find command hwmatch" on boot, do:
```
# Maybe??
sudo cp /usr/lib/grub/i386-pc/hwmatch.mod /boot/grub/x86_64-efi/hwmatch.mod


sudo dpkg-reconfigure grub-pc
```

To change gnome keybindings to i3 defaults:

```
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Alt><Shift>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Alt><Shift>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Alt><Shift>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Alt><Shift>4']"

gsettings set org.gnome.desktop.wm.keybindings close "['<Alt><Shift>q']"

gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
gsettings get org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings get org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab']"

gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.shell.keybindings toggle-overview "['<Alt>d']"
```
