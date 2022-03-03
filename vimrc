" Disable Vi mode
set nocompatible
" Allow vim to use the right configuration (located in ~/.vim/ftplugin/)
" depending on the file type
" filetype plugin on

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Latex
Plugin 'vim-latex/vim-latex'
Plugin 'lervag/vimtex'
Plugin 'PietroPate/vim-tex-conceal'
Plugin 'sirver/ultisnips'
Plugin 'xuhdev/vim-latex-live-preview'

" General
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'

" Statusbar
Plugin 'itchyny/lightline.vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Colorschemes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'honza/vim-snippets'
Plugin 'habamax/vim-gruvbit'
Plugin 'trapd00r/neverland-vim-theme'

call vundle#end()

filetype plugin on

" Uncomment thefollowing for solarized theme. Then comment set t_Co=256 and
" colorscheme gruvbox
"if (has("termguicolors"))
  "set termguicolors
"endif
"colorscheme solarized
"set t_Co=256
"colorscheme gruvbox
"set background=dark
"colorscheme default
colorscheme molokai

" Setting the lightline colorscheme to gruvbox
let g:lightline = {
      \ 'colorscheme': 'molokai',
      \ }

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

inoremap ^^ ^

" Enables automatic indentation as you type
filetype indent on

" Let vim immediately recognize the .tex filetype. Otherwise you have to close
" and open vim
let g:tex_flavor='latex'

" Indents word-wrapped lines as much as the 'parent' line
set breakindent
" Ensures word-wrap does not split words
set formatoptions=l
set lbr

set conceallevel=2
let g:tex_conceal="abdgms"

let g:Tex_AdvancedMath=2

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:livepreview_previewer = 'zathura'
