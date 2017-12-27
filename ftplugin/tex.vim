set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

nnoremap <F6> :!mkdir -p prev_latex; rm -R prev_latex/*; pdflatex --output-dir=prev_latex % <CR>
" nnoremap <F6> :!mkdir -p prev_latex; rm -R prev_latex/*; pdflatex --output-dir=prev_latex % && evince prev_latex/*.pdf<CR>

