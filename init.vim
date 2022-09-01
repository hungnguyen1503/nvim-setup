set mouse=a
set smarttab

set tabstop=4
set shiftwidth=4
set softtabstop=4 expandtab
set smarttab

set listchars=tab:\¦\       " Tab charactor
set list

" set foldmethod=indent
" set foldnestmax
set foldnestmax=1
" set autoindent 
set smartindent

set number                  " Show line number
set number relativenumber   " Enable relativenumber
set ignorecase              " Enable case-sensitive 
set textwidth=80            " Limit number char in line 
let bclose_multiple = 0
" Disable backup
set nobackup
set nowb
set noswapfile

" Optimize 
set synmaxcol=200
set lazyredraw
au! BufNewFile,BufRead *.json set foldmethod=indent " Change foldmethod for specific filetype
autocmd FileType vim,c,txt setlocal foldmethod=indent

set encoding=UTF-8

" Set format of tab name
set guitablabel=\[%N\]\ %t\ %M

syntax on

" Enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed  
  set guioptions-=T
  set guioptions-=r
  set guioptions-=m
else
  set clipboard=unnamedplus
endif

" Setting font size in other windows
set guifont=Fira\ Code:h12
" set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
" noremap <silent> <C--> <Esc>:set guifont=Droid\ Sans\ Mono\ for\ Powerline:h8<CR>
" noremap <silent> <C-=> <Esc>:set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11<CR>

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
      \ | checktime 
    \ | endif
autocmd FileChangedShellPost *
    \ echohl WarningMsg 
    \ | echohl None


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Resize pane
nmap <M-Right> :vertical resize -1<CR>    
nmap <M-Left> :vertical resize +1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Set <space> is key leader
let mapleader=","

"FIX:mode delete line
noremap dd dd<esc>

" Unhightlight
noremap <leader><leader> :noh<CR>

" Set cursor move begin and end line
noremap <silent><S-h> ^
noremap <silent><S-l> $

" Set cursor in Insert mode
inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>

" " Switch current line
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
 
" " Move selection up
" xmap <A-k> :move '<-2<CR>gv
" " Move selection down
" xmap <A-j> :move '>+1<CR>gv

" Insert new blank
nnoremap <space>o o<ESC>
nnoremap <space>O O<ESC>

" Switch Buffer
nnoremap <silent> <space><Tab> :w<CR>:bnext<CR>
nnoremap <silent> <space><S-Tab> :w<CR>:bprevious<CR>

" Switch windows in vim
noremap <silent> <C-l> <C-w><C-l>
noremap <silent> <C-h> <C-w><C-h>
" noremap <C-k> <C-w><C-k>
" noremap <C-j> <C-w><C-j>

" Unhightlight after search
autocmd cursorhold * set nohlsearch
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?

" Toggle relative line numbers and regular line numbers.
nnoremap <silent> <F12> :set relativenumber!<CR>
inoremap <silent> <F12> <C-o>:set relativenumber!<CR>

" Color current line
set cursorline

" Set shortcut ctags to coc
nnoremap <silent>gt <C-]> 
nnoremap <silent>gb <C-t>

" Set buffer Delete without windows
nnoremap <silent> d<Tab> :Bdelete<CR>

" Set copy such as win-os
noremap <C-c> y

" Set quick scroll 
set scrolloff=0
nnoremap <C-j> 3<C-e>
nnoremap <C-k> 3<C-y>

" Set argument array
nnoremap <silent> <leader>ar :ArgWrap<CR>

" Set close 
noremap dv <C-W>o

" Set paste in insert mode
inoremap <C-v> <C-R>*

" Adjust size window NerdTree
nnoremap <C-a> <C-w><C-l><C-w><C-h>

" Save file
nnoremap <silent> <C-s> <ESC>:w<CR>:lua require("notify")("Save successfull ", "info",{title = "Save file "})<CR>
inoremap <silent> <C-s> <ESC>:w<CR>:lua require("notify")("Save successfull ", "info",{title = "Save file "})<CR>

" Reload settings file
nnoremap <silent> <leader>s <ESC>:w<CR>:source%<CR>:lua require("notify")("Reload successfull 勒", "info",{title = "Reload file setting "})<CR>

" Prevent copy visualmode 
vnoremap <silent>p p:let @+=@0<CR>:let @"=@0<CR>" inoremap <silent>p p:let @+=@0<CR>:let @"=@0<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin list
" (used with Vim-plug - https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/plugged')
" Theme
  Plug 'joshdick/onedark.vim',                  " Dark theme
  Plug 'dracula/vim',{'name':'dracula'}

" File browser
  Plug 'preservim/nerdTree'                     " File browser  
  Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status

" Icon in nvim
  Plug 'ryanoasis/vim-devicons'                 " Icon
  Plug 'kyazdani42/nvim-web-devicons'

  Plug 'tiagofumo'
          \ .'/vim-nerdtree-syntax-highlight'
  Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file 

" Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" Terminal
  Plug 'voldikss/vim-floaterm'                  " Float terminal

" Code intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server protocol (LSP) 
  Plug 'pappasam/coc-jedi',                     " Jedi language server 
  Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 

  "Plug 'alvan/vim-closetag'
  Plug 'frazrepo/vim-rainbow'
  " Plug 'mattn/emmet-vim' 
  Plug 'preservim/nerdcommenter'                " Comment code 
  Plug 'liuchengxu/vista.vim'                   " Function tag bar 

  " Plug 'webastien/vim-ctags'
  Plug 'moll/vim-bbye'                          " Delete buffer without close windows

" Code syntax highlight
  Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
  " Plug 'vim-scripts/ifdef-highlighting'         " Highlight
  Plug 'machakann/vim-highlightedyank'          " Highlight copy word

" Code commentary
  Plug 'tpope/vim-commentary'
  
" Debugging
  " Plug 'puremourning/vimspector'                " Vimspector
  Plug 'camspiers/animate.vim'
  Plug 'camspiers/lens.vim'

" Source code version control 
  Plug 'tpope/vim-fugitive'                     " Git infomation 
  Plug 'rhysd/git-messenger.vim'                " Git messenger
  " Plug 'tpope/vim-rhubarb' 
  Plug 'kdheepak/lazygit.nvim'                  " Lazy git 
  Plug 'airblade/vim-gitgutter'                 " Git show changes 
  " Plug 'samoshkin/vim-mergetool'                " Git merge

" Using quick resgister
  Plug 'tversteeg/registers.nvim',              " Quick use register 
              \{ 'branch': 'main' } 

" Quick replace
  Plug 'kqito/vim-easy-replace'                 " Easy to replace something 

" Smart move
  Plug 'matze/vim-move'                         " Quick move 

" ArgWrap argument
  Plug 'foosoft/vim-argwrap'                    " Divide element in array

" Gui in nvim
  Plug 'MunifTanjim/nui.nvim'

" Gui with search box 
  Plug 'VonHeikemen/searchbox.nvim'             " Search Box

" Quick scope word
  Plug 'unblevable/quick-scope'

" Comfortable motion moving
  Plug 'yuttie/comfortable-motion.vim'          " Smooth moving without neovide

" Search file, buffer, etc
  Plug 'nvim-telescope/telescope.nvim',
                \{ 'tag': '0.1.0' }
  Plug 'nvim-telescope/telescope-file-browser.nvim'

" UI in nvim
  Plug 'nvim-lua/plenary.nvim'

" Highlight doxygen
  Plug 'B4mbus/todo-comments.nvim'              " highlight doxygen

" FIX:Quick got to preview source code 
" HACK: ok
" NOTE: ok
" PERF: ok
" WARNING: ok
" TODO: ok

" Underline same word
  Plug 'yamatsum/nvim-cursorline'

" Notification
  Plug 'rcarriga/nvim-notify'                   " Notification 

" Start up
  Plug 'startup-nvim/startup.nvim'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Require plugin config
lua require('pluglua')

" Set theme 
colorscheme onedark
set termguicolors
set t_Co=256
" highlight cType         guifg=#ff79c6   
" highlight nameStructure guifg=#8be9fd 
" hi Normal guibg=NONE ctermbg=NONE

lua <<EOF
require("notify")("Welcome back NeoVim","info",{title="R-car Vision 2"})
EOF

" Fix sizeof windows
set winfixwidth
set winfixheight
let g:lens#animate = 0
let g:lens#height_resize_max = 40
let g:lens#height_resize_min = 5
let g:lens#width_resize_max = 80
let g:lens#width_resize_min = 20

" " Overwrite some color highlight 
" if (has("autocmd"))
"   augroup colorextend
"     autocmd ColorScheme 
"       \ * call onedark("Comment",{"fg": {"gui": "#728083"}})
"     autocmd ColorScheme 
"       \ * call onedark#extend_highlight("LineNr", {"fg": {"gui": "#728083"}})
"   augroup END
" endif

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

hi Pmenu ctermfg=250 ctermbg=236 guifg=#BBBBBB guibg=#2D2D30 
hi PmenuSel ctermfg=250 ctermbg=24 guifg=#BBBBBB guibg=#073655
hi PmenuSbar ctermbg=237 guibg=#3D3D40
hi PmenuThumb ctermbg=250 guibg=#BBBBBB

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
execute 'source' setting_file
endfor

