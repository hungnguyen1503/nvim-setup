noremap <silent> <C-j> :call comfortable_motion#flick(80)<CR>
noremap <silent> <C-k> :call comfortable_motion#flick(-80)<CR>
noremap <silent> <C-e> :call comfortable_motion#flick(80)<CR>
noremap <silent> <C-y> :call comfortable_motion#flick(-80)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-80)<CR>
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(80)<CR>

" let g:comfortable_motion_friction = 80.0
" let g:comfortable_motion_air_drag = 2.0

" let g:comfortable_motion_friction = 0.0
" let g:comfortable_motion_air_drag = 4.0

let g:comfortable_motion_interval = 1000/60
let g:comfortable_motion_friction = 40.0
let g:comfortable_motion_air_drag = 10.0

let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.

nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 3)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -3)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 6)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -6)<CR>
