
""" BASIC STYLING
"colorscheme default

" Split delimitations colors and style
let accentcolor="blue"
let secondarycolor="yellow"
let fgcolor="black"

" Clear diagnostic column background
highlight clear SignColumn

set fillchars+=vert:\▏
execute "hi VertSplit cterm=None ctermfg=".accentcolor
execute "hi StatusLine cterm=standout ctermfg=".accentcolor
execute "hi StatusLineNC cterm=underline ctermfg=".accentcolor

" Tab line style
execute "hi TabLineFill cterm=None ctermfg=".accentcolor
execute "hi TabLineSel cterm=bold ctermbg=".accentcolor
execute "hi TabLineSel ctermfg=".fgcolor
execute "hi TabLine cterm=bold ctermbg=None ctermfg=".accentcolor
execute "hi Title cterm=None ctermfg=".secondarycolor

" Popup menu colors
highlight Pmenu ctermbg=darkgray ctermfg=white
highlight PmenuSel ctermbg=lightgreen ctermfg=black

" Error highlighting color:
highlight Error cterm=None ctermbg=DarkRed ctermfg=None

" Line number color
highlight LineNr cterm=None ctermfg=blue ctermbg=None




""" GENERAL CONFIGS

" Set tabs to 4 spaces
set ts=4 sw=4
set expandtab

" Set mouse navigation
set mouse=a

" Set line numbering
set number

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




""" YAML
" Enable yaml 2 width tab
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2




""" HOTKEYS

" Set tab and shift-tab to indent/unindent in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" Set shift-up/down to move half a screen
nnoremap <S-Up> <C-u>
nnoremap <S-Down> <C-d>

" Remap leader key to space
nnoremap <SPACE> <Nop>
let mapleader = " "



""" FILE EXPLORER
" Settings for the default nvim file explorer
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 10
map , :Lexplore<CR>
