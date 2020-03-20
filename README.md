My neovim config for python and markdown dev. For the python autocomplete to work, the installation of the neovim :

```
sudo apt install neovim
pip install neovim

# then clone this config repo in ~/.config/nvim
```

Also to install vim-plug and nodejs:

```
# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# nodejs
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs
```

It's also useful to installzsh, oh-my-zsh and conda to manage python envs:

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
```
