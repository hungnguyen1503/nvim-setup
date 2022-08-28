
noremap / :SearchBoxIncSearch title=Search<CR>
noremap ? :SearchBoxIncSearch reverse=true<CR>
noremap <leader>rw :SearchBoxReplace title=Replace -- <C-r>=expand('<cword>')<CR><CR>
noremap <leader>rv  y:SearchBoxReplace title=Replace -- <C-r>"<CR>
noremap <leader>ry :SearchBoxReplace title=Replace confirm=menu<CR>
" :SearchBoxReplace confirm=menu visual_mode=true<CR>

