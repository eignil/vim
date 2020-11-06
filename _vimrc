" set termguicolors
if &compatible
  set nocompatible
endif

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

