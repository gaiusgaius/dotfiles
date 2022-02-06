" Disable Vi mode
set nocompatible
" Allow vim to use the right configuration (located in ~/.vim/ftplugin/)
" depending on the file type
" filetype plugin on

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-latex/vim-latex'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'

call vundle#end()

filetype plugin on

" Uncomment thefollowing for solarized theme. Then comment set t_Co=256 and
" colorscheme gruvbox
"if (has("termguicolors"))
  "set termguicolors
"endif
"colorscheme solarized
set t_Co=256
colorscheme gruvbox
set background=dark
"colorscheme default

" Allow recursive search for file in directorys
set path+=**
" Enable a menu for completion when pressing tab 
set wildmenu
set spelllang=en_gb
" Activating mouse support
if has('mouse')
  set mouse=a
endif
" Display a status bar at the bottom
set laststatus=2
" Show the line number of the cursor in the status bar
set ruler

" Copy the basic preamble
nnoremap ,PRE :r ~/.vim/snippets/preamble.tex<Return>
" Copy pgfplotstable usage syntax into document
nnoremap ,TAB :r ~/.vim/snippets/pgfplotstablecsv.tex<Return>
" Copy code environment with usage into document LTS=listings
nnoremap ,LTS :r ~/.vim/snippets/code.tex<Return>

" Enables automatic indentation as you type
filetype indent on

" Let vim immediately recognize the .tex filetype. Otherwise you have to close
" and open vim
let g:tex_flavor='latex'


