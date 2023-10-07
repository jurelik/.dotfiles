"vim-plug config"
call plug#begin('~/.vim/plugged')

Plug 'n1ghtmare/noirblaze-vim'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'deponian/vim-lightline-whitespace'
Plug 'jiangmiao/auto-pairs'

call plug#end()"

"mappings
map <silent> <C-p> :FZF<CR>
inoremap <C-e> <C-o>$
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
nnoremap j gj
nnoremap k gk

"hardcore
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"theme
syntax enable
colorscheme noirblaze

"appearance
set cc=80
set number
set signcolumn=yes
set tabstop=2
set shiftwidth=2
set expandtab
set title
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'noirblaze',
  \ 'component_expand': { 'whitespace': 'lightline#whitespace#check' },
  \ 'component_type': { 'whitespace': 'warning' },
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
  \   'right': [ [ 'whitespace' ],
  \              [ 'lineinfo' ], 
  \              [ 'percent' ],
  \              [ 'fileformat', 'fileencoding', 'filetype' ],
  \              [ 'gutentags' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name',
  \   'gutentags': 'gutentags#statusline'
  \ },
  \ }

"indentLine
let g:indentLine_char='¦'
let g:indentLine_color_term='241'

"gutentags
set ttimeoutlen=50
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['.git']
let g:gutentags_generate_on_new = 0
let g:gutentags_generate_on_write = 1

"performance when scrolling
set ttyfast
set regexpengine=1

"disable 'Press Enter or type command to continue' message
set shortmess=F

"enable spell-check in .md & .txt files
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell
