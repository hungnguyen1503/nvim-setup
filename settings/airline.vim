let g:airline_powerline_fonts = 1                       " Enable font for status bar
let g:airline_theme='dracula'                           " Theme OneDark
" let g:airline_theme='dracula'                           " Theme OneDark

let g:airline#extensions#tabline#enabled = 1            " Enable Tab bar
let g:airline#extensions#tabline#left_sep = ' '         " Enable Tab seperator 
let g:airline#extensions#tabline#left_alt_sep = '|'     " Enable Tab seperator
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t'        " Set Tab name as file name
let g:airline#extensions#whitespace#enabled = 0         " Remove warning whitespace"
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#hunks#coc_git = 1

if !exists('g:airline_symbols')                         " Check right symbols
let g:airline_symbols = {}
endif
  
"" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = 'ln'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.colnr='col'"let g:airline_theme='dracula'
