" set termguicolors
if &compatible
  set nocompatible
endif

function! s:packager_init(packager) abort
  call a:packager.add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call a:packager.add('vim-airline/vim-airline')
  call a:packager.add('vim-airline/vim-airline-themes')
  call a:packager.add('vimwiki/vimwiki', { 'type': 'opt' })
  " call a:packager.add('junegunn/fzf', { 'do': './install --all && ln -s $(pwd) ~/.fzf'})
  call a:packager.add('junegunn/fzf.vim')
  call a:packager.add('Shougo/deoplete.nvim')
  call a:packager.add('skywind3000/vim-terminal-help')
  call a:packager.add('skywind3000/asyncrun.vim')
  " for markdown
  call a:packager.add('godlygeek/tabular')
  call a:packager.add('plasticboy/vim-markdown')
  " keyboard layouts switch
  call a:packager.add('lyokha/vim-xkbswitch')
  " file tree
  call a:packager.add('Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' })
  " call a:packager.add('kristijanhusak/defx-icons')
  call a:packager.add('APZelos/blamer.nvim')
endfunction

packadd vim-packager
call packager#setup(function('s:packager_init'))
