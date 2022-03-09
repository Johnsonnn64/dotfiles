"         _
"  _   __(_)___ ___  __________
" | | / / / __ `__ \/ ___/ ___/
" | |/ / / / / / / / /  / /__
" |___/_/_/ /_/ /_/_/   \___/
"

let mapleader =" "

call plug#begin('~/.vim/plugged')

" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/arcticicestudio/nord-vim.git'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'ap/vim-css-color'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'farmergreg/vim-lastplace'
Plug 'junegunn/goyo.vim'
" Plug 'mhinz/vim-startify'
Plug 'tmsvg/pear-tree'
Plug 'tools-life/taskwiki'
Plug 'ryanoasis/vim-devicons'
Plug 'iberianpig/ranger-explorer.vim'

call plug#end()

" key map
map q :quit<CR>
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" lightline 
" set laststatus=2

" let g:lightline = { 
" 	\ 'colorscheme' : 'nord',
" 	\ }
" airline
" powerline symbols
" setcellwidths()

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_buffers = 0
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'

" nord colorscheme
colorscheme nord

" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_by_filename=1
let g:ctrlp_dotfiles = 1
map <leader>p :CtrlP ~<CR>

  set encoding=utf-8
  set number relativenumber
  set cursorline
  " search
  set incsearch
  set ignorecase
  set smartcase
  " time insert on cursor 
  nmap <F3> i<C-R>=strftime("%Y-%m-%d")<CR><Esc>
  imap <F3> <C-R>=strftime("%Y-%m-%d")<CR>
  " time  for diary
  nmap <F2> i<C-R>=strftime("%H-%m-%d")<CR><Esc>
  imap <F2> <C-R>=strftime("%H-%m-%d")<CR>
  " for diary entry
  nmap <F1> i<C-R>=strftime("%a, %m-%d")<CR><Esc>
  imap <F1> <C-R>=strftime("%a, %m-%d")<CR>
  " tab space
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab	
  set smartindent
  " stop auto comment
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  " backups
  " set noswapfile
  " set nobackup
  set undodir=~/.vim/undodir
  set undofile

" vim wiki
set nocompatible 
filetype plugin on 
syntax on

" spell check 
map <leader>s :setlocal spell! spelllang=en_us<CR>

" vim is retard
set splitbelow splitright

" undotree
map <leader>u :UndotreeToggle<CR>

if !exists('g:undotree_SetFocusWhenToggle')
  let g:undotree_SetFocusWhenToggle = 0
endif

" ripgrep
if executable('rg')
  let g:rg_derive_root ='true'
endif

" Commentary
map <leader>cl :Commentary<CR>

" goyo
map <leader>g :Goyo<CR>
let g:goyo_width='100'
let g:goyo_height='90%'

" vim wiki
let g:vimwiki_list = [{'auto_diary_index': 1}]
map <leader>wa :e ~/vimwiki/anime.wiki<CR>
" taskwiki
let g:taskwiki_dont_preserve_folds='yes'  
let g:taskwiki_dont_fold="yes"
let g:taskwiki_disable_concealcursor='yes'

" peartree
imap <C-Space> <Plug>(PearTreeJump)

" ranger
let g:ranger_explorer_keymap_edit    = '<C-o>'
let g:ranger_explorer_keymap_tabedit = '<C-t>'
let g:ranger_explorer_keymap_split   = '<C-s>'
let g:ranger_explorer_keymap_vsplit  = '<C-v>'
nnoremap <silent><Leader>f :RangerOpenCurrentDir<CR>

