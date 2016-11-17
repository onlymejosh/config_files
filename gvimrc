" No audible bell
set vb

" Graphical Vim config file
set encoding=utf-8
set guioptions+=e           " use tabs
set guioptions-=T           " hide the toolbar
set guioptions-=r           " hide the scrollbars
set guioptions-=R           " hide the scrollbars with vertical split
set guioptions-=l           " hide the scrollbars
set guioptions-=L           " hide the scrollbars with vertical split
set guifont=Menlo:h13
colorscheme flatlandia

set lines=50
set columns=179

set guitablabel=%t 
set guitabtooltip=%F

nmap <leader>1 :set lines=50 columns=179<CR><C-w>o
nmap <leader>2 :set lines=50 columns=179<CR><C-w>v

set guioptions=e           " use tabs