" Specify a directory for plugins
call plug#begin('~/.vim/autoload/')
" Load plugins here
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'franbach/miramare'
Plug 'editorconfig/editorconfig-vim'
" Install devicons
Plug 'ryanoasis/vim-devicons'
" Install vim-helm
Plug 'towolf/vim-helm'
" Install Emmet
Plug 'mattn/emmet-vim'
" Icon for different file types
Plug 'ryanoasis/vim-devicons'
" Docker tools
Plug 'kkvh/vim-docker-tools'
" Add neodark
Plug 'KeitaNakamura/neodark.vim'
" Add night owl
Plug 'haishanh/night-owl.vim'
" Add Go vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Add tcomment
Plug 'tomtom/tcomment_vim'
"Add sensible
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
" Docker tools
Plug 'kkvh/vim-docker-tools'
"Add syntastic
Plug 'vim-syntastic/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'preservim/nerdcommenter'
"Add signify
Plug 'mhinz/vim-signify'
"Add nerdtree
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
"Add fugitive
Plug 'tpope/vim-fugitive'
"Add rhubarb
Plug 'tpope/vim-rhubarb'
" Add Gitgutter
Plug 'airblade/vim-gitgutter'
" Add commentary
Plug 'tpope/vim-commentary'
Plug 'othree/xml.vim'
"Add lightline
Plug 'itchyny/lightline.vim'

"Add fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Add  Ack to allow  search within vim
Plug 'mileszs/ack.vim'

" Nginx plugin
Plug 'chr4/nginx.vim'

" monokai
Plug 'patstockwell/vim-monokai-tasty'
Plug 'pearofducks/ansible-vim'
Plug 'vim-scripts/groovy.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'ekalinin/dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-rails'
Plug 'vim-scripts/bash-support.vim'
Plug 'moll/vim-node'
Plug 'christoomey/vim-tmux-navigator'
Plug 'svermeulen/vim-yoink'
Plug 'pangloss/vim-javascript'

call plug#end()

if has('python3')
  silent! python3 1
endif

if (has("termguicolors"))
  set termguicolors
endif

"{{ TMUX
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

"{{ Mappings (map)
"
"{{ Set Options (set)

" Show commits for every source line
nnoremap <Leader>gb :Gblame<CR> " git blame
nnoremap <Leader>gb :Gbrowse<CR>>
vnoremap <Leader>gb :Gbrowse<CR>
nnoremap <Leader>gb :Gw<CR> " git add file


"{{ lightline statusbar
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

"{{ Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map c I//<Space><ESC>=<CR>
" Airline theme
"let g:airline_theme='one'
"syntax enable
colorscheme gruvbox 
"highlight Normal ctermbg=None
"highlight LineNr ctermfg=DarkGrey

" Powerline
let g:airline_powerline_fonts = 1

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set encoding=UTF-8
set statusline+=%{FugitiveStatusline()}
set statusline+=%{StatuslineGitBranch()}
let b:git_clean = system(printf("cd %s && git status --porcelain 2>/dev/null", expand('%:p:h:S'))) is# ''
let &statusline = '%{get(b:, "git_clean", "") ? "[clean]" : "[changed]"}'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:netrw_banner = 0
set termguicolors

set autoread
au FocusGained,BufEnter * :checktime
" the configuration options should be placed before `colorscheme miramare`
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1
let g:airline_theme = 'miramare'


" Ensure plugins works well with Fugitive
" Avoid loading EditorConfig for any remote files
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Resolves conflict of trailing whitespace
let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

" Deoplete
let g:deoplete#enable_at_startup = 1

set rtp+=/usr/local/opt/fzf

syntax on
set nu
set rnu
set wrapmargin=5
set ruler
set pyxversion=3
set pythondll=libpython3
" User defined ex commands
command! RefreshConfig source $MYVIMRC
