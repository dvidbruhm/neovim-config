let g:plugged_home = '~/.vim/plugged'

call plug#begin(g:plugged_home)

source ~/.config/nvim/coc.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/better_indent.vim
source ~/.config/nvim/rainbow_parenthese.vim

call plug#end()

source ~/.config/nvim/general.vim
