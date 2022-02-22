setlocal number
" colorscheme default
syntax on
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal softtabstop=2
setlocal autoindent
setlocal smartindent

nnoremap <F3> :w<Return>:!pdflatex %<Return><Return>:!cp % /home/julius/latex/<Return><Return>
nnoremap <F4> :w<Return>:!pdflatex %<Return><Return>:!cp % /home/julius/latex/<Return>:! var=%; swallow zathura ${var/.tex/.pdf}<Return><Return>
nnoremap <F2> :! var=%; zathura ${var/.tex/.pdf} &<Return><Return>
nnoremap <F10> :! pdflatex %<Return><Return>:! var=%; bibtex "${var/.tex/}"<Return><Return>:! pdflatex %<Return><Return>:! pdflatex %<Return><Return>
