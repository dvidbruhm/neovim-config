let g:plugged_home = '~/.vim/plugged'

call plug#begin(g:plugged_home)

source ~/.config/nvim/coc.vim
source ~/.config/nvim/better_indent.vim
source ~/.config/nvim/rainbow_parenthese.vim
source ~/.config/nvim/markdown.vim
source ~/.config/nvim/goyo.vim
source ~/.config/nvim/wintabs.vim
source ~/.config/nvim/nerdtree.vim

call plug#end()

source ~/.config/nvim/general.vim
