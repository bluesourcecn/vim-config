" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @bluesource


" ===
" === loadConfig : to load config file
" ===
function s:loadConfig(configFile)
  exec 'so ~/.nvimrc/'.a:configFile
endfunction


" ===
" === Environment
" ===
call s:loadConfig('core/environment.vim')


" ===
" === Editor behavior
" ===
call s:loadConfig('core/basicconf.vim')


" ===
" === Install Plugins with Vim-Plug
" ===
call s:loadConfig('core/plugin.vim')


" ===
" === KeyMaps
" ===
call s:loadConfig('core/keymaps.vim')