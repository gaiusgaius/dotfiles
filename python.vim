setlocal number
" colorscheme desert
syntax on
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal softtabstop=4
setlocal autoindent
setlocal smartindent
set number
set relativenumber

colorscheme molokai

" Setting the lightline colorscheme to gruvbox
let g:lightline = {
      \ 'colorscheme': 'molokai',
      \ }

nnoremap <F2> :w<Return>:!clear; python3 %<Return>
