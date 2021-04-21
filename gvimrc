" __  ____   __   ____ __     _____ __  __ ____   ____
"|  \/  \ \ / /  / ___|\ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  | |  __ \ \ / / | || |\/| | |_) | |
"| |  | | | |   | |__||  \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|    \___||   \_/  |___|_|  |_|_| \_\\____|

@auther bluesource

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F11> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
"解决菜单乱码
so $VIMRUNTIME/delmenu.vim
so $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8
set guifont=FiraCode\ NF\:h10
set lines=30 columns=110
