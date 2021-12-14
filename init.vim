let g:plugged_home = '~/.vim/plugged'

call plug#begin(g:plugged_home)

source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/doge.vim
source ~/.config/nvim/plugins/dracula.vim

call plug#end()

source ~/.config/nvim/general.vim
