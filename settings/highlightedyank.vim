if !exists('##TextYankPost')
  nmap y <Plug>(highlightedyank)
  xmap y <Plug>(highlightedyank)
  omap y <Plug>(highlightedyank)
endif

" Optimizing hightlight duration
let g:highlightedyank_highlight_duration = 200
" let g:highlightedyank_highlight_duration = -1

" Highlight color
highlight HighlightedyankRegion cterm=reverse gui=reverse

" Suppress highlight in visual mode
let g:highlightedyank_highlight_in_visual = 0

