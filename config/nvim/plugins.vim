"file browsing and searching"
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'yegappan/mru' "show a list of most recently used files
"docs => https://github.com/epmatsw/ag.vim/blob/master/README.md
Plug 'rking/ag.vim' "install Ag on your machine: https://github.com/ggreer/the_silver_searcher

"Fuzzy finder
Plug '/usr/local/opt/fzf' "install fzf with brew for this to work
Plug 'junegunn/fzf.vim'
"Plug 'vim-scripts/LustyExplorer'
Plug 'tpope/vim-vinegar'
"add file icons
Plug 'ryanoasis/vim-devicons'
"Plugin to comment and uncomment code
Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'
"highlight yanked text"
Plug 'machakann/vim-highlightedyank'

"colorschemes
"Plug 'bf4/vim-dark_eyes'
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'morhetz/gruvbox'
"status line
Plug 'itchyny/lightline.vim'

"auto completion
Plug 'ervandew/supertab'
"Plug 'szw/vim-tags'
"close and delete matching pairs
Plug 'jiangmiao/auto-pairs'
"auto save files
Plug 'vim-scripts/vim-auto-save'
"tab completions
Plug 'ajh17/VimCompletesMe'
"Plug 'Valloric/YouCompleteMe'

"snippets and autocomplete
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"a plugin to configure vim in accordance to local .editorconfig file
Plug 'editorconfig/editorconfig-vim'

"Plugins for golang dev
Plug 'fatih/vim-go'
Plug 'altercation/vim-colors-solarized'

"Plugins for golang dev
"

"Plugins for js dev
Plug 'mxw/vim-jsx'
Plug 'Galooshi/vim-import-js'
Plug 'epilande/vim-react-snippets'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
Plug 'kristijanhusak/vim-js-file-import'
Plug 'isRuslan/vim-es6'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'wesQ3/vim-windowswap'
Plug 'moll/vim-node'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'SirVer/ultisnips'

"Plugins for typescript development
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"linters
Plug 'w0rp/ale'
Plug 'gryf/pylint-vim'
Plug 'nvie/vim-flake8'


"linters

Plug 'w0rp/ale'
"version control
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"show git status flags on files"
Plug 'Xuyuanp/nerdtree-git-plugin'

"manages tags files in vim
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
