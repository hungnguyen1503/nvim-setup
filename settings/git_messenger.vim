
let g:git_messenger_close_on_cursor_moved='true'
let g:git_messenger_include_diff='none'
let g:git_messenger_git_command='git'
let g:git_messenger_into_popup_after_show='true'
let g:git_messenger_floating_win_opts = { 'border': 'single' }
let g:git_messenger_popup_content_margins = v:false

" Normal color in popup window with 'CursorLine'
hi link gitmessengerPopupNormal CursorLine
" Header such as 'Commit:', 'Author:' with 'Statement' highlight group
hi link gitmessengerHeader Statement
" Commit hash at 'Commit:' header with 'Special' highlight group
hi link gitmessengerHash Special
" History number at 'History:' header with 'Title' highlight group
hi link gitmessengerHistory Title10
" History number at 'Email:' header with custom highlight group
hi gitmessengerEmail term=None guifg=#999999 ctermfg=245

nmap m <Plug>(git-messenger)
noremap cm <Plug>(git-messenger-close)
