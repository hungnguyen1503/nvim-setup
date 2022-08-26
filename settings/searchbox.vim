
noremap / :SearchBoxMatchAll title=Match\ All<CR>
noremap ? :SearchBoxIncSearch reverse=true<CR>
noremap <leader>rw :SearchBoxReplace -- <C-r>=expand('<cword>')<CR><CR>
noremap <leader>rv  y:SearchBoxReplace -- <C-r>"<CR>
noremap <leader>ry :SearchBoxReplace confirm=menu<CR>
" :SearchBoxReplace confirm=menu visual_mode=true<CR>

