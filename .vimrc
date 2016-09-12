set nocompatible
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))

"set runtimepath+=~/dots/vim/.vim/bundle/neobundle.vim
"call neobundle#begin(expand('~/dots/vim/.vim/bundle/'))
NeoBundle 'gmarik/vundle'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'spf13/vim-colors'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'rhysd/conflict-marker.vim'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tacahiroy/ctrlp-funky'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'vim-scripts/sessionman.vim'
NeoBundle 'matchit.zip'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'powerline/fonts'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'mbbill/undotree'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/restore_view.vim'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'tpope/vim-abolish.git'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'reedes/vim-litecorrect'
NeoBundle 'reedes/vim-textobj-sentence'
NeoBundle 'reedes/vim-textobj-quote'
NeoBundle 'reedes/vim-wordy'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'godlygeek/tabular'
NeoBundle 'luochen1990/rainbow'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'Shougo/neocomplete.vim.git'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'honza/vim-snippets'
NeoBundle 'spf13/PIV'
NeoBundle 'arnaud-lb/vim-php-namespace'
NeoBundle 'beyondwords/vim-twig'
NeoBundle 'klen/python-mode'
NeoBundle 'yssource/python.vim'
NeoBundle 'python_match.vim'
NeoBundle 'pythoncomplete'
NeoBundle 'elzr/vim-json'
NeoBundle 'groenewege/vim-less'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'briancollins/vim-jst'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'tpope/vim-haml'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'spf13/vim-preview'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'cespare/vim-toml'
NeoBundle 'quentindecock/vim-cucumber-align-pipes'
NeoBundle 'saltstack/salt-vim'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'eagletmt/neco-ghc'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'moll/vim-node'
NeoBundle 'ternjs/tern_for_vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'wellle/targets.vim'

NeoBundle 'tpope/vim-sleuth'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'eagletmt/neco-ghc'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'moll/vim-node'
NeoBundle 'ternjs/tern_for_vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'wellle/targets.vim'

""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }


call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck"

"""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""

syntax on
"This both turns on filetype detection and allows loading
"of language specific indentation files based on that detection
filetype plugin indent on

" Reload vimrc when edited
autocmd!  BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,~/.vim/custom/*
      \ so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif

so ~/.vim/custom/plugins-setting.vim
so ~/.vim/custom/settings.vim
so ~/.vim/custom/mappings.vim
so ~/.vim/custom/split-windows.vim
so ~/.vim/custom/qargs.vim
so ~/.vim/custom/mk-non-ex-dir.vim
so ~/.vim/custom/multicursor-conflict-fix.vim

