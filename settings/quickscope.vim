" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

let g:qs_enable=1
let g:qs_max_chars=500
let g:qs_lazy_highlight = 1
let g:qs_delay = 50
let g:qs_filetype_blacklist = ['dashboard']
let g:qs_buftype_blacklist = ['terminal', 'nofile']

" Mapping key
noremap <C-;> ,

" Test Hung Nguyen Nghi Tran a b c ddd aaa kkk
