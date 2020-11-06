" Startup {{{
filetype indent plugin on

" vim 文件折叠方式为 marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Environment {{{

if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:iswindows = 0
endif
" }}}

" General {{{
set nocompatible
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed
" 设置 alt 键不映射到菜单栏
set winaltkeys=no
" }}}

" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}

" GUI {{{
if has("gui_running")
    colorscheme Tomorrow-Night

    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim

    set cursorline
    set hlsearch
    set number
    " 窗口大小
    set lines=35 columns=140
    " 分割出来的窗口位于当前窗口下边/右边
    set splitbelow
    set splitright
    "不显示工具/菜单栏
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    " 使用内置 tab 样式而不是 gui
    set guioptions-=e
    set nolist
    " set listchars=tab:▶\ ,eol:¬,trail:·,extends:>,precedes:<
    set guifont=Inconsolata:h12:cANSI
endif

" }}}


"Lazy load plugins with a mapping
nnoremap <silent><Leader>ww :unmap <Leader>ww<BAR>packadd vimwiki<BAR>VimwikiIndex<CR>
" Set clipboard.
set clipboard+=unnamedplus

" https://github.com/DeXP/xkb-switch-win
" let g:XkbSwitchLib='D:\Tools\nvim-win64\libxkbswitch64.dll'
let g:XkbSwitchEnabled = 1
