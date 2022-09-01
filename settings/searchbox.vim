" Search current word undercursor
noremap <silent> <A-/> :SearchBoxIncSearch -- <C-r>=expand('<cword>')<CR><CR>

" Search current word undercursor
xnoremap <leader>s :SearchBoxIncSearch -- <C-r>"<CR>

" Search word
noremap <silent> / :SearchBoxIncSearch title=Search<CR>

" Replace current word undercursor
noremap <silent> <leader>rw :SearchBoxReplace confirm=menu -- <C-r>=expand('<cword>')<CR><CR>

" Replace visual word 
noremap <silent> <leader>rv  y:SearchBoxReplace confirm=menu -- <C-r>"<CR>

" Replace visual word with confirm
noremap <silent> <leader>ry :SearchBoxReplace confirm=menu<CR>
" :SearchBoxReplace confirm=menu visual_mode=true<CR>

