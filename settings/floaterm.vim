" let g:floaterm_keymap_new    = '<F1>'
" let g:floaterm_keymap_prev   = '<F2>'
" let g:floaterm_keymap_next   = '<F3>'
" let g:floaterm_keymap_toggle = '<F4>'
let g:floaterm_position = 'topright'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'normal'
let g:floaterm_wintitle=1
let g:floaterm_autoclose=1
let g:floaterm_autoinsert=1
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif

" Set color
hi Floaterm guibg=Grey15
hi FloatermBorder ctermfg=250 ctermbg=24 guifg=#BBBBBB guibg=#073655

autocmd User FloatermOpen        " triggered after opening a new/existed floater

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new terminal 
nnoremap <silent> <leader>to    :FloatermNew<CR>
tnoremap <silent> <leader>to    <C-\><C-n>:FloatermNew<CR>

" Kill current terminal 
nnoremap <silent> <leader>tk :FloatermKill<CR>:FloatermPrev<CR>
tnoremap <silent> <leader>tk <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Navigation next and previous terminal 
nnoremap <silent> <leader>tn :FloatermNext<CR>
tnoremap <silent> <leader>tn <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <leader>tp :FloatermPrev<CR>
tnoremap <silent> <leader>tp <C-\><C-n>:FloatermPrev<CR>

" Toggle terminal
nnoremap <silent> <leader>tt :FloatermToggle<CR>
tnoremap <silent> <leader>tt <C-\><C-n>:FloatermToggle<CR>

" Show terminal
nnoremap <silent> <leader>ts :FloatermShow<CR>

" Focus terminal 
nnoremap <silent> <leader>tf <C-\><C-n><C-W><Left><CR>
tnoremap <silent> <leader>tf <C-\><C-n><C-W><Left><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to run other console apps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git 
" nnoremap <silent> <leader>gl :FloatermNew! --position=bottomright --height=0.7 --width=0.7 --title='GitLog' git log<CR>
" let g:which_key_map.t = {
"       \ 'name' : '+terminal' ,
"       \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
"       \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
"       \ 'g' : [':FloatermNew lazygit'                           , 'git'],
"       \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
"       \ 'n' : [':FloatermNew node'                              , 'node'],
"       \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
"       \ 'p' : [':FloatermNew python'                            , 'python'],
"       \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
"       \ 't' : [':FloatermToggle'                                , 'toggle'],
"       \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
"       \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
"       \ }
