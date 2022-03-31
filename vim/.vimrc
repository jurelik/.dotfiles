"vim-plug config"
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-rooter'
Plug 'alvan/vim-closetag'

call plug#end()"

"mappings
"map <silent> <C-n> :Lexplore<CR> //phasing out netrw
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

"gruvbox
set t_Co=256
let g:gruvbox_sign_column='bg0'
let g:gruvbox_invert_indent_guides=1
colorscheme gruvbox
set background=dark

"appearance
set number
set signcolumn=yes
set tabstop=2
set shiftwidth=2
set expandtab
set title
set laststatus=2
set statusline=%{fugitive#statusline()}
let g:airline_section_z='%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__#%\ %#__accent_bold#%{g:airline_symbols.colnr}%v%#__restore__#'

"indentLine
let g:indentLine_char='¦'
let g:indentLine_color_term='241'

"netrw //phasing out
"let g:netrw_liststyle=3
"let g:netrw_banner=0
"let g:netrw_browse_split=4
"let g:netrw_winsize=15

"gutentags
set statusline+=%{gutentags#statusline()}
set ttimeoutlen=50
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['package.json', '.git']
let g:gutentags_generate_on_new = 0
let g:gutentags_generate_on_write = 1

"closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,js,ts,tsx'

"snippets
nnoremap \html :-1read $HOME/.vim/.skeleton.html<CR>8jo
nnoremap \try :-1read $HOME/.vim/.trycatch.js<CR>5jdd4kO

"performance when scrolling
set ttyfast
set regexpengine=1

"coc.nvim
set updatetime=300
set nobackup
set nowritebackup

"disable 'Press Enter or type command to continue' message
set shortmess=F

"fix typescript syntax issue
set re=0

"enable spell-check in .md & .txt files
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell
