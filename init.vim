let g:plugged_home = '~/.vim/plugged'

call plug#begin(g:plugged_home)

source ~/.config/nvim/coc.vim"

call plug#end()

source ~/.config/nvim/general.vim

hi clear SignColumn
