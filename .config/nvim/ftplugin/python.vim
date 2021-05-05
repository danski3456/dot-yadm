nmap <leader>pvh yawo<esc>pi.head()<esc>0V<c-c><c-c>ddk
nmap <leader>pv yawo<esc>pV<c-c><c-c>ddk
let g:slime_cell_delimiter = "# %%"

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

let g:ultisnips_python_style = 'numpy'


abbr _pdb import pdb; pdb.set_trace()

" autocmd BufWritePost *.py :! command -v black >/dev/null 2>&1 && {black %}
" autocmd BufWritePost *.py :! command -v isort >/dev/null 2>&1 && {isort %}
nnoremap <F8> :silent !black -S %<CR>
nnoremap <F9> :silent !isort -S %<CR><CR>
