" set termguicolors
if &compatible
  set nocompatible
endif

"Lazy load plugins with a mapping
nnoremap <silent><Leader>ww :unmap <Leader>ww<BAR>packadd vimwiki<BAR>VimwikiIndex<CR>
" Set clipboard.
set clipboard+=unnamedplus

" https://github.com/DeXP/xkb-switch-win
" let g:XkbSwitchLib='D:\Tools\nvim-win64\libxkbswitch64.dll'
let g:XkbSwitchEnabled = 1
