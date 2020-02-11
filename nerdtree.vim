Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'

" NERDTREE
" Space to open.
" set position to left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <Space> :NERDTreeTabsToggle<CR>
let g:NERDTreeWinPos = "left"
