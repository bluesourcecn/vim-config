" _____  _     _    _  _____ _____ _   _ 
"|  __ \| |   | |  | |/ ____|_   _| \ | |
"| |__) | |   | |  | | |  __  | | |  \| |
"| |    | |___| |__| | |__| |_| |_| |\  |
"|_|    |______\____/ \_____|_____|_| \_|

" Author: @bluesource


" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.nvimrc/plugged')

" start screen
Plug 'mhinz/vim-startify'

" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()


" ===================== Start of Plugin Settings =====================
" ===
" === vim-airline
" ===
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1


" =====================  End of Plugin Settings  =====================
