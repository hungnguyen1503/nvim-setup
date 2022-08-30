" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

let g:qs_enable=1
let g:qs_max_chars=80
let g:qs_lazy_highlight = 1
let g:qs_delay = 0
let g:qs_filetype_blacklist = ['dashboard']
let g:qs_buftype_blacklist = ['terminal', 'nofile']

" Mapping key
noremap <C-;> ,

" Test Hung Nguyen Nghi Tran a b c ddd aaa kkk
