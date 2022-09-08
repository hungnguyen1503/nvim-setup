if exists("g:neovide")
    let g:neovide_refresh_rate=60
    let g:neovide_refresh_rate_idle=5

    let g:neovide_no_idle=v:true
    " let g:neovide_transparency=0.7
    let g:neovide_transparency=1

    let g:neovide_scroll_animation_length = 0.3

    let g:neovide_cursor_trail_length=0.5
    let g:neovide_cursor_antialiasing=v:true
    " let g:neovide_cursor_vfx_mode = "railgun"
    let g:neovide_cursor_vfx_particle_phase=1.1
    let g:neovide_cursor_vfx_particle_curl=1.0
    let g:neovide_cursor_vfx_particle_density = 10.0

    let g:neovide_remember_window_size = v:true
    let g:neovide_touch_drag_timeout=0.17

    let g:neovide_cursor_unfocused_outline_width=0.125
    let g:neovide_cursor_antialiasing=v:true

    let g:fullscreen = "false"
    function! Changefullscreen() 
        if g:fullscreen == "false"
            let g:fullscreen = "true"
            let g:neovide_fullscreen=v:false
        else
            let g:fullscreen = "false"
            let g:neovide_fullscreen=v:true
        endif
    endfunction

    noremap <silent><F11> :call Changefullscreen()<CR>

endif
