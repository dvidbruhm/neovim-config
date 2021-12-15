Plug 'voldikss/vim-floaterm'

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

let g:floaterm_title = '($1|$2)'
let g:floaterm_autoclose = 1

augroup FloatermCustomisations
    autocmd!
    autocmd ColorScheme * highlight FloatermBorder guibg=none guifg=#BD93F9 "Dracula nice purple
augroup END
