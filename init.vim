" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi',
Plug 'junegunn/goyo.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1

" Deoplete select first item of autocomplete list automatically
set completeopt=menu,noinsert

" Change brackets highlight color
hi MatchParen cterm=none ctermbg=green ctermfg=blue

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
