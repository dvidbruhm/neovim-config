" Set colorscheme
colorscheme gruvbox_no_bg

" Set tab and shift-tab to indent/unindent in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" Set mouse navigation
set mouse=a

" Set line numbering
set number

" Set tabs to 4 spaces
set ts=4 sw=4
set expandtab

" Save file with sudo
:command WriteSaveBuffer write|bdelete

" Use :ww instead of :WriteWithSudo
cnoreabbrev ww WriteSaveBuffer

" Settings for the default nvim file explorer
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20
map , :Lexplore<CR>

" Set all yank and paste to copy/paste to normal 
" clipboard (same as ctrl-c/ctrl-v)
set clipboard=unnamedplus

""" Set persisent undo (can undo even after closing file)
""" and put files created for undos under "undodir/" in nvim's
""" config path
let vimDir = '$HOME/.config/nvim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif


