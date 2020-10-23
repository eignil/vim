" set termguicolors
if &compatible
  set nocompatible
endif

" Load packager only when you need it
function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('eignil/vim.vim')
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call packager#add('vimwiki/vimwiki', { 'type': 'opt' })
  call packager#add('Shougo/deoplete.nvim')
  call packager#add('morhetz/gruvbox')
  call packager#add('skywind3000/vim-terminal-help')
  call packager#add('skywind3000/asyncrun.vim')
  " for markdown
  call packager#add('godlygeek/tabular')
  call packager#add('plasticboy/vim-markdown')
  " keyboard layouts switch
  call packager#add('lyokha/vim-xkbswitch')
endfunction

command! PackagerInstall call PackagerInit() | call packager#install()
command! -bang PackagerUpdate call PackagerInit() | call packager#update({ 'force_hooks': '<bang>' })
command! PackagerClean call PackagerInit() | call packager#clean()
command! PackagerStatus call PackagerInit() | call packager#status()

"Lazy load plugins with a mapping
nnoremap <silent><Leader>ww :unmap <Leader>ww<BAR>packadd vimwiki<BAR>VimwikiIndex<CR>
" Set clipboard.
set clipboard+=unnamedplus

" https://github.com/DeXP/xkb-switch-win
" let g:XkbSwitchLib='D:\Tools\nvim-win64\libxkbswitch64.dll'
let g:XkbSwitchEnabled = 1
