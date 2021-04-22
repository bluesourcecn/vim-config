" _  __________    __  __  __    __    _____  _____ _____ _   _  _____  _____ 
"| |/ /  ____\ \  / / |  \/  |  /__\  |  __ \|  __ \_   _| \ | |/ ____|/ ____|
"| ' /| |__   \ \/ /  | |\/| | /(__)\ | |__) | |__) || | |  \| | |  __| (___  
"| . \| |____  |  |   | |  | |/ ____ \| |    | |    _| |_| |\  | |__| |____) |
"|_|\_\______| |__|   |_|  |_/_/    \_\_|    |_|   |_____|_| \_|\_____|_____/ 

" Author: @bluesource

" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>
let mapleader=" "

" Save & quit
noremap Q :qa<CR>
noremap <C-q> :q<CR>
noremap <C-s> :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.nvimrc/init.vim<CR>
noremap <LEADER>rk :e ~/.nvimrc/core/keymaps.vim<CR>
noremap <LEADER>re :e ~/.nvimrc/core/environment.vim<CR>
noremap <LEADER>rb :e ~/.nvimrc/core/basicconf.vim<CR>
noremap <LEADER>rp :e ~/.nvimrc/core/plugin.vim<CR>
noremap <LEADER>cc :e ~/.nvimrc/coc-settings.json<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" ===
" === Cursor Movement
" ===
"     ^
"     k
" < h   l >
"     j
"     v

" U/E keys for 5 times k/j (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j

" N key: go to the start of the line
noremap <silent> H 0
" I key: go to the end of the line
noremap <silent> L $

" Faster in-line navigation
noremap W 5w
noremap B 5b 

" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>u <C-w>k
noremap <LEADER>e <C-w>j
noremap <LEADER>n <C-w>h
noremap <LEADER>i <C-w>l

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <C-up> :res +5<CR>
noremap <C-down> :res -5<CR>
noremap <C-left> :vertical resize-5<CR>
noremap <C-right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

" ===
" === Buffer management
" ===
noremap bp :bp<CR>
noremap bn :bn<CR>
noremap bd :bd<CR>
