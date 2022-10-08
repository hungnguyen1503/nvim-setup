set mouse=a
set mousemodel=popup

set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4 expandtab
set smarttab
set completeopt=menu,menuone,noselect

set listchars=tab:\¦\       " Tab charactor
set list

" set foldmethod=indent
" set foldnestmax
" set foldnestmax=1
" set autoindent 
" set smartindent
set number                  " Show line number
set number relativenumber   " Enable relativenumber
set ignorecase              " Enable case-sensitive 
" set textwidth=80            " Limit number char in line 
set wrap linebreak
set fo+=t
let bclose_multiple = 0
set pumheight=12

" Disable backup
set nobackup
set nowb
set noswapfile

" Optimize 
" set synmaxcol=500
set lazyredraw
" au! BufNewFile,BufRead *.json set foldmethod=indent " Change foldmethod for 
"             \specific filetype
" autocmd FileType vim,c,txt setlocal foldmethod=indent
" autocmd User call coc#rpc#request('fillDiagnostics', [Plug 'andymass/vim-matchup'bufnr('%')])
set encoding=UTF-8

" Set format of tab name
" set guitablabel=\[%N\]\ %t\ %M

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

" Setting font size in other windows" set guifont=Fira\ Code:h11
set guifont=Fira\ Code:h13
" set guifont = Droid\ Sans\ Mono\ for\ Powerline\ Regular:h11
" set guifont=RobotoMono\ Nerd\ Font\ Regular\ Mono:h11
let g:flag_font_size = "false"
function! ChangefontToggle()
if g:flag_font_size == "false"
    let g:flag_font_size="true"
    set guifont=Fira\ Code:h11
else
    let g:flag_font_size="false"
    set guifont=Fira\ Code:h13
endif
endfunction
noremap cf :call ChangefontToggle()<CR>

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
" autocmd CursorHold * silent call CocActionAsync('highlight')
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
nnoremap <silent> <M-Up>    :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <M-Down>  :call animate#window_delta_height(10)<CR>
nnoremap <silent> <M-Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <M-Right> :call animate#window_delta_width(-10)<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Set <space> is key leader
let mapleader=","

" Unhightlight
noremap <silent> <leader><leader> :noh<CR>

" Set cursor move begin and end line
noremap <silent><S-h> ^
noremap <silent><S-l> $

" Set cursor in Insert mode
inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>

" Insert new blank
nnoremap <space>o o<ESC>
nnoremap <space>O O<ESC>

" Switch windows in vim
noremap <C-l> <C-w><C-l>
noremap <C-h> <C-w><C-h>
noremap <S-j> <C-w><C-j>
noremap <S-k> <C-w><C-k>

" Unhightlight after search
autocmd cursorhold * set nohlsearch
noremap <silent> n <cmd>:set hlsearch<cr>n
noremap <silent> N :set hlsearch<cr>N
let g:cursorhold_updatetime = 200

" Toggle relative line numbers and regular line numbers.
nnoremap <silent> <F12> :set relativenumber!<CR>
inoremap <silent> <F12> <C-o>:set relativenumber!<CR>

" Color current line
set cursorline

" Set copy such as win-os
noremap <C-c> y

" Set quick scroll 
set scrolloff=0
" noremap <C-j> <C-e>
" noremap <C-k> <C-y>

" Set argument array
nnoremap <silent> <leader>ar :ArgWrap<CR>

" Set close window
noremap cv <C-W>o

" Set split window
noremap <silent> sp <cmd>:sp<CR>

" Set paste in insert mode
inoremap <C-v> <C-R>*

" Adjust size window menu
nnoremap <C-a> <C-w><C-l><C-w><C-h>

" Save file
nnoremap <silent> <C-s> <ESC>:w<CR>:lua require("notify")("Save successfull ", "info",{title = "Save file "})<CR>
inoremap <silent> <C-s> <ESC>:w<CR>:lua require("notify")("Save successfull ", "info",{title = "Save file "})<CR>

" Reload settings file
nnoremap <silent> <leader>s <ESC>:w<CR>:source%<CR>
        \:lua require("notify")("Reload successfull ", "info",{title = "Reload file setting "})<CR>
        \:let g:neovide_fullscreen=v:false<CR>

" Prevent copy visualmode 
xnoremap <silent>p p:let @+=@0<CR>:let @"=@0<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin list
" (used with Vim-plug - https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/plugged')
" Theme
" Plug 'joshdick/onedark.vim',                  " Dark theme
" Plug 'dracula/vim',{'name':'dracula'}

" File browser
" Plug 'kyazdani42/nvim-tree.lua'

" Icon in nvim
" Plug 'ryanoasis/vim-devicons'                 " Icon for nvim
" Plug 'kyazdani42/nvim-web-devicons'           " Icon for telescope

" Status bar
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Terminal
" Plug 'voldikss/vim-floaterm'                  " Float terminal

" Code intellisense
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server protocol (LSP) 
" Plug 'pappasam/coc-jedi'                      " Jedi language server 
" Plug 'folke/lua-dev.nvim'                   " TODO:Check lsp server
" Plug 'rafcamlet/coc-nvim-lua'                 " Code vim-lua 

" Completion pairs
" Plug 'frazrepo/vim-rainbow'                   " Color pairs
" Plug 'kylechui/nvim-surround'
" Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 
"
" Plug 'moll/vim-bbye'                          " Delete buffer without close windows

" Code syntax highlight
" Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
" Plug 'machakann/vim-highlightedyank'          " Highlight copy word

" Code commentary
" Plug 'preservim/nerdcommenter'                " Comment code
" Plug 'tpope/vim-commentary'

" Debugging
" Plug 'puremourning/vimspector'                " Vimspector
" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'

" Source code version control 
 " Plug 'tpope/vim-fugitive'                     " Git infomation 
" Plug 'rhysd/git-messenger.vim'                " Git messenger
" Plug 'kdheepak/lazygit.nvim'                  " Lazy git 
" Plug 'airblade/vim-gitgutter'                 " Git show changes 

" Using quick resgister
" Plug 'tversteeg/registers.nvim',              " Quick use register 
"           \{ 'branch': 'main' } 
" Quick replace
" Plug 'kqito/vim-easy-replace'                 " Easy to replace something 
"
" Smart move
" Plug 'matze/vim-move'                         " Quick move 

" ArgWrap argument
" Plug 'foosoft/vim-argwrap'                    " Divide element in array

" Gui in nvim
" Plug 'MunifTanjim/nui.nvim'

" Gui with search box 
" Plug 'VonHeikemen/searchbox.nvim'             " Search Box word
  " Plug 'romgrk/searchbox.nvim'             " Search Box word

" Quick scope word
  " Plug 'unblevable/quick-scope'                 " Quick search word in current line

" Search file, buffer, etc
  " Plug 'nvim-telescope/telescope.nvim',
  "               \{ 'tag': '0.1.0' }
  " Plug 'nvim-telescope/telescope-file-browser.nvim'

" UI in nvim
  " Plug 'nvim-lua/plenary.nvim'

" Highlight doxygen
  " Plug 'B4mbus/todo-comments.nvim'              " highlight doxygen

" ERROR:Quick got to preview source code 
" HACK: ok
" NOTE: ok
" PERF: ok
" WARNING: ok
" TODO: ok

" Underline same word
  " Plug 'yamatsum/nvim-cursorline'

" Notification
  " Plug 'rcarriga/nvim-notify'                   " Notification 

" Start up
  " Plug 'startup-nvim/startup.nvim'              " Start up with themes

  " Plug 'romgrk/barbar.nvim'                     " Smart manage tabline 

" Add dynamic font scaling
  " Plug 'tenxsoydev/size-matters.nvim'           " Adjust font size 

" Workspace
  " Plug 'nvim-telescope/telescope-project.nvim'  " Manage project

"Smooth Scroll
  " Plug 'karb94/neoscroll.nvim'

  " Plug 'folke/trouble.nvim'
  " Plug 'arafatamim/trouble.nvim'

  " Plug 'antoinemadec/FixCursorHold.nvim'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set theme 
" colorscheme onedark
set termguicolors
set t_Co=256

" Require plugin config
lua require('pluglua')
lua require('init')
lua require('plugins')

lua <<EOF
    require("notify")("Welcome back NeoVim  ","info",{title="R-car Vision 2"})
EOF

" Fix sizeof windows
set winfixwidth
set winfixheight
let g:lens#animate = 0
let g:lens#height_resize_max = 40
let g:lens#height_resize_min = 5
let g:lens#width_resize_max = 80
let g:lens#width_resize_min = 20

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" hi Pmenu ctermfg=250 ctermbg=236 guifg=#BBBBBB guibg=#2D2D30 
" hi PmenuSel ctermfg=250 ctermbg=24 guifg=#BBBBBB guibg=#073655
" hi PmenuSbar ctermbg=237 guibg=#3D3D40
" hi PmenuThumb ctermbg=250 guibg=#BBBBBB

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
execute 'source' setting_file

endfor

