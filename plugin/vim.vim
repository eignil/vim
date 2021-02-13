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
set nowrap
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set number
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed
" Set clipboard.
set clipboard+=unnamedplus

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

"Lazy load plugins with a mapping
nnoremap <silent><Leader>ww :unmap <Leader>ww<BAR>packadd vimwiki<BAR>VimwikiIndex<CR>
" https://github.com/DeXP/xkb-switch-win
let g:XkbSwitchLib= stdpath("config").'\\bin\\libxkbswitch64.dll'
let g:XkbSwitchEnabled = 1
