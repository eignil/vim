" GUI {{{
" colorscheme Tomorrow-Night

" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim

"set cursorline
"set hlsearch
"" 窗口大小
"set lines=35 columns=140
"" 分割出来的窗口位于当前窗口下边/右边
"set splitbelow
"set splitright
""不显示工具/菜单栏
" set guioptions+=T
" set guioptions+=m
"set guioptions-=L
"set guioptions-=r
"set guioptions-=b
"" 使用内置 tab 样式而不是 gui
"" set guioptions-=e
"set nolist
" set listchars=tab:▶\ ,eol:¬,trail:·,extends:>,precedes:<
if(g:iswindows)
    GuiFont! Consolas:h12
endif

" }}}


