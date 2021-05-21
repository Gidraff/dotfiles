""""Note to self
"to see file-type icons on file names, install ITerm Nerd fonts
"brew tap caskroom/fonts
"brew cask install font-hack-nerd-font
"then change your ITerm2 Non-ASCII font to Hack Regular Nerd Font Complete
syntax on

"set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'avelino/vim-bootstrap-updater'
" javascript
Plug 'jelera/vim-javascript-syntax'
" python
Plug 'davidhalter/jedi-vim'
" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ajvargo/ruby-refactor'  

"silence  powerline error on python 3.7
if has('python3')
  silent! python3 1
endif

so  ~/.config/nvim/plugins.vim


call plug#end()            " required
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"filetype plugin indent on    " required
let mapleader=',' "make comma the mapleader
"show filename on status line

set statusline=%t
set number relativenumber
" toggle ralative line numbers

nmap <leader>rn :set relativenumber!<CR>
nmap <leader>tn :set relativenumber!<CR>
nmap <leader>a :q<CR>
"automatically toggle relative numbers on different situeations
""when in insert mode or buffer loses focus, turn off relative number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set foldmethod=syntax
"set this for fuzzy explorer

set hidden
"colorscheme atom-dark-256  "gruvbox
set background=dark
colorscheme gruvbox

set cursorline
set scrolloff=3
set autochdir
"specify buffers for autocomplete

set complete=.,w,b,u
"settings for auto saving files
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
let g:netrw_liststyle = 3
"white space

set backspace=eol,start,indent
set wrap
set linebreak
set textwidth=79
set number
"default number of spaces for tabs

set expandtab ts=2 sw=2 ai
"number of spaces when edditing specific files

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
"flag any whitespace in a python file

"searching
set hlsearch
set incsearch
let g:ags_agexe = 'ag'
"live substitution"
set inccommand=nosplit

set showmatch
set ignorecase
set smartcase

noremap <F5> :grep <C-R><C-W> *<CR>
"search the word under the cursor in all files in current directory

map <F9> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
"a shortcut to edit vimrc file"

map <leader>ev :e ~/.config/nvim/init.vim<CR>
map <leader>pv :e ~/.config/nvim//plugins.vim<CR>
map <leader>sv :so ~/.config/nvim/init.vim<CR>
map <leader><space> :nohlsearch<cr>
" adding new lines in normal mode

"add a new line below the current
nmap <leader>nl o<ESC>
"add a new line above  the current
nmap <leader>nL O<ESC>
"nmap <leader>q :q<cr>
nmap <space> i<space><ESC>

"fast saving of a buffer
nmap <leader>w :w<cr>

"disabling and remapping the arrow keys
"move a line up/down on normal mode
noremap <Up> :m .-2<CR>==
noremap <Down> :m .+1<CR>==
"noremap <Left> <NOP>
"noremap <Right> <NOP>
"do nothing in insert mode
"imap <Up> <NOP>
"imap <Down> <NOP>
"imap <Left> <NOP>
"imap <Right> <NOP>
"move selected lines up/down in visual mode
vmap <Up> :m '<-2<CR>gv=gv
vmap <Down> :m '>+1<CR>gv=gv

"quick pairs
imap <leader>" ""<ESC>i
imap <leader>' ''<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>( ()<ESC>i
imap <leader>< <><ESC>i
imap jj <ESC>
imap kk <ESC>
"terminal mode mappings
"map Esc to switch back to normal mode
tnoremap <ESC> <C-\><C-n>
tmap <C-c> <C-w>c

" Plugins mappings
"vim-sorround 'mappings'
noremap <leader>mm) ysiw)
noremap <leader>mm] ysiw]
noremap <leader>mm} ysiw}w<space>lw<space>e

"custom sorround mappings
noremap <leader>qw bcw''<ESC>hp
noremap <leader>dq bcw""<ESC>hp
vnoremap <leader>qw c''<ESC>hp
vnoremap <leader>dq c""<ESC>hp
"sorround selected text in  brackets, parenthesis, e.t.c
vnoremap <leader>{ c{ }<esc>hpl<space>bhx
vnoremap <leader>[ c[]<esc>hp
vnoremap <leader>( c()<esc>hp

"moving between windows/splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
map <C-f> <C-w>f

"nerdtreeToogle shortcut
nmap <C-a> :NERDTreeToggle<CR>
"refresh node to currently open file
map <leader>r :NERDTreeFind<cr>
"when you delete or rename a file, always delete its associated buffer
let NERDTreeAutoDeleteBuffer=1
"mru mapping | most recently used files
nmap <leader>rf :MRU<CR>

"add spaces after comment delimiters by default 'Nerd commenter'
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
"resize splits
nmap <Left> :vertical resize -5<CR>
nmap <Right> :vertical resize +5<CR>

"open vertical splits to the right
set splitright
let g:ale_linters = {'javascript': ['eslint']}
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_emit_conflict_warnings = 0

"cnfigurations for closetag plugin
"enable autoclose in the following file types
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.js,*.jsx'
" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)

"javascript mappings
" mappings for vim-js-import
nnoremap <F5> :call JsFileImport()<CR>
nnoremap <F6> :call SortJsFileImport()<CR>
"mappings for tern vim
nmap <leader>df :TernDef
nmap <leader>ref :TernRefs
nmap <leader>ren :TernRename

"vim-node mappings
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
"use <C-w>f to open the file under the cursor in a new vertical split
autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif
"
let g:closetag_emptyTags_caseSensitive = 1
" Shortcut for closing tags, default is '>'

"gutentags settings
"when opening a file in a project that has no tags file, let Gutentags auto-generate that tags file.
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_write = 1
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" config project root markers.
let g:gutentags_project_root = ['.root']
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
"
" Trigger configuration (Optional)
let g:UltiSnipsExpandTrigger='<c-l>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:tern_request_timeout = 6000

"make the enter key select the suggested popup
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

imap ;d <div className=''><ESC>li
imap ;p <p>
imap ;a <a href=''><ESc>hi
imap ;ul <ul><esc>li
imap ;li <li><esc>li
map ;h1 <h1><ESC>li
map ;h2 <h2<ESC>li
map ;h3 <h3><ESC>li
map ;h4 <h4><ESC>li
map ;h5 <h5><ESC>li
imap ;sp <span><ESC>li
imap ;i <input type='text' placeholder=''><ESC>2hi
imap ;bt <button className=''><ESC>li
imap ;im import  from '';<ESC>8hi
"importing objects
imap ;cim import {  } from '';<ESC>10hi

"Invoke CtrlP with starting directory
nmap <leader>p <C-p>
" ignore git files, node_modules and bower_components
" it will load faster this way
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|bower_compnents\|DS_Store\|git'
"make Gdiff always open vertical splits
set diffopt+=vertical

set wildignore+=*.pyc,*.swp,*.DS_Store,*tags*,
"Nerdtree config for wildignore
let NERDTreeRespectWildIgnore=1

set background=dark
"lightline colorscheme
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

augroup autoSourceMyvimrc
    au!
    au BufWritePost init.vim so ~/.config/nvim/init.vim
augroup END
