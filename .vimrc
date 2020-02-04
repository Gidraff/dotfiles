" Specify a directory for plugins

call plug#begin('~/.vim/plugged')

" Load plugins here
" Add Go vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Add tcomment
Plug 'tomtom/tcomment_vim'
"Add sensible
Plug 'tpope/vim-sensible'
"Add syntastic
Plug 'vim-syntastic/syntastic'
Plug 'altercation/vim-colors-solarized'
"Add lightline
Plug 'vim-airline/vim-airline-themes'
"Add lightline
Plug 'davidhalter/jedi-vim'
"Add lightline
Plug 'preservim/nerdcommenter'
"Plug 'Shougo/deoplete.nvim'
"Add deoplete
Plug 'zchee/deoplete-jedi'
"Add signify
Plug 'mhinz/vim-signify'
"Add nerdtree
Plug 'preservim/nerdtree'
"Add fugitive
Plug 'tpope/vim-fugitive'
"Add rhubarb
Plug 'tpope/vim-rhubarb'

"Add lightline
Plug 'itchyny/lightline.vim'

"Add fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Add  Ack to allow  search within vim
Plug 'mileszs/ack.vim'

"
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()



if has('python3')
  silent! python3 1
endif


" Show commits for every source line
nnoremap <Leader>gb :Gblame<CR> " git blame
nnoremap <Leader>gb :Gbrowse<CR>>
vnoremap <Leader>gb :Gbrowse<CR>
nnoremap <Leader>gb :Gw<CR> " git add file


" lightline statusbar
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>


" Use deoplete auto_completion
"let g:deoplete#enable_at_startup = 1

" Airline theme
let g:airline_theme='deus'
" colorscheme dracula

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:netrw_banner = 0

syntax on
set nu
set wrapmargin=5
set ruler


map c I//<Space><ESC>=<CR>
