call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'icymind/NeoSolarized'
Plug 'neovimhaskell/haskell-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'Twinside/vim-hoogle'
Plug 'airblade/vim-gitgutter'
Plug 'flrnd/plastic.vim'
Plug 'ajmwagar/vim-deus'
Plug 'romainl/flattened'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'rakr/vim-one'
Plug 'mileszs/ack.vim'
Plug 'Lokaltog/vim-distinguished'
Plug 'cormacrelf/vim-colors-github'
call plug#end()

set relativenumber

set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set number

set ttyfast
set winwidth=90
set winminwidth=30 


set t_ut=""
set termguicolors
set background=dark
colorscheme github

syntax on
filetype plugin indent on

let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "high"
let g:neosolarized_vertSplitBgTrans = 0
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0


let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
     \ }
     \ }

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

:imap jj <Esc>

:map <A-f> <C-c>:FZF<CR>
:map <A-a> <C-c>:Ag<CR>

:map <A-/> <C-c>:NERDTreeFind<CR>

:map <A-h> <C-c><C-w>h
:map <A-j> <C-c><C-w>j
:map <A-k> <C-c><C-w>k
:map <A-l> <C-c><C-w>l

:map <C-Left> :vertical resize -1<CR>
:map <C-Right> :vertical resize +1<CR>
:map <C-Up> :resize +1<CR>
:map <C-Down> :resize -1<CR>

:map <F1>   <C-c>:Hoogle 

:tnoremap jj <C-\><C-n>

:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l

:map <A-,> <C-c>:tabprevious<CR>
:map <A-.> <C-c>:tabnext<CR>
:map <A-n> <C-c>:tabnew<CR>
:map <A-d> <C-c>:bp<CR>:bdelete #<CR>

:noremap <A-s> <C-c>:w<CR>
:nnoremap ; :
:inoremap <A-s> <C-c>:w<CR>

:map <F8> <C-c>:NERDTreeToggle<CR>
