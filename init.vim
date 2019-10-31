call plug#begin(stdpath('data') . '/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-buftabline'
Plug 'icymind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/oceanlight'
Plug 'NLKNguyen/papercolor-theme'
Plug 'mkarmona/materialbox'
Plug 'rakr/vim-one'
Plug 'neovimhaskell/haskell-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'Twinside/vim-hoogle'
Plug 'airblade/vim-gitgutter'
call plug#end()

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number

set termguicolors
set background=dark
colorscheme one


syntax on
filetype plugin indent on

let g:neosolarized_contrast = "medium"
let g:neosolarized_visibility = "high"
let g:neosolarized_vertSplitBgTrans = 1
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

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ }
      \ }
:imap jj <Esc>

:map <A-f> <C-c>:FZF<CR>

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
:map <C-F1> <C-c>:HoogleClose<CR>
:map <S-F1> <C-c>:HoogleLine<CR> 

:tnoremap jj <C-\><C-n>

:tnoremap <A-h> <C-/><C-n><C-w>h
:tnoremap <A-j> <C-/><C-n><C-w>j
:tnoremap <A-k> <C-/><C-n><C-w>k
:tnoremap <A-l> <C-/><C-n><C-w>l

:map <expr> <A-,> @% =~ "NERD" ? "<C-c>" : "<C-c>:bprev<CR>"
:map <expr> <A-.> @% =~ "NERD" ? "<C-c>" : "<C-c>:bnext<CR>"
:map <A-d> <C-c>:bp<CR>:bdelete #<CR>

:map <C-s> <C-c>:w<CR>
:inoremap <C-s> <C-c>:w<CR>

:map <F8> <C-c>:NERDTreeToggle<CR>
