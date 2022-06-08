setlocal number
" colorscheme default
syntax on
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal softtabstop=2
setlocal autoindent
setlocal smartindent

set t_Co=256
colorscheme gruvbox-material
set background=dark

" Setting the lightline colorscheme to gruvbox
let g:lightline = {
      \ 'colorscheme': 'gruvbox-material',
      \ }

nnoremap <F3> :w<Return>:!pdflatex %<Return><Return>:!cp % /home/julius/latex/<Return><Return>
" Only for i3swallow
" nnoremap <F4> :w<Return>:!pdflatex %<Return><Return>:!cp % /home/julius/latex/<Return>:! var=%; swallow zathura ${var/.tex/.pdf}<Return><Return>
nnoremap <F4> :w<Return>:!pdflatex %<Return><Return>:!cp % /home/julius/latex/<Return>:! var=%; dwmswallow $WINDOWID; zathura ${var/.tex/.pdf}<Return><Return>
nnoremap <F6> :w<Return>:! st -e dwmswallow $WINDOWID; latexmk -pvc %<Return><Return>
nnoremap <F2> :! var=%; zathura ${var/.tex/.pdf} &<Return><Return>
nnoremap <F10> :! pdflatex %<Return><Return>:! var=%; bibtex "${var/.tex/}"<Return><Return>:! pdflatex %<Return><Return>:! pdflatex %<Return><Return>
nnoremap <C-A> :LLPStartPreview<Return>
nnoremap <C-h> :! zathura ~/Documents/latex/pdfs/symbols.pdf<Return><Return>
nnoremap <F11> :! firefox --new-window "https://detexify.kirelabs.org/classify.html"<Return><Return>

" Transparent background
hi Normal guibg=NONE ctermbg=NONE
