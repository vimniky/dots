
"""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""
"checkout https://github.com/Shougo/neobundle.vim for more
"""""""""""""""""""""""""""""""""""
set nocompatible
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))

"set runtimepath+=~/dots/vim/.vim/bundle/neobundle.vim
"call neobundle#begin(expand('~/dots/vim/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
"""""""""""""""""""""""""""""""""""
"motions and operators
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-surround'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'glts/vim-textobj-indblock'
NeoBundle 'saihoooooooo/vim-textobj-space'
"NeoBundle 'spiiph/vim-space'
"NeoBundle 'tommcdo/vim-exchange'
NeoBundle 'glts/vim-textobj-comment'
NeoBundle 'Julian/vim-textobj-brace'
NeoBundle 'kana/vim-textobj-function'
NeoBundle 'terryma/vim-expand-region'

NeoBundle 'Shougo/unite.vim'

"register
NeoBundle 'YankRing.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'jiangmiao/auto-pairs'

NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'Yggdroot/indentLine'

"language
"NeoBundle 'scrooloose/syntastic'
"NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
"NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'moll/vim-node'
NeoBundle 'tpope/vim-haml'
NeoBundle 'othree/html5.vim'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'groenewege/vim-less'
NeoBundle 'leafgarland/typescript-vim'

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-endwise'
"NeoBundle 'tpope/vim-rails'
"NeoBundle 'tpope/vim-bundler'


NeoBundle 'paredit.vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'isRuslan/vim-es6'

"utils
NeoBundle 'danro/rename.vim'

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

"use a modeline to make Vim only use these settings for this file.
set modelines=1
syntax enable
set guifont=Monaco:h15



inoremap jk <esc>
noremap <C-g> <esc>
cnoremap <C-g> <esc>
xnoremap <C-g> <esc>
onoremap <C-g> <esc>

nnoremap Q :q!<cr>
nnoremap W :w!<cr>
nnoremap Z ZZ
nnoremap U :redo<cr>

nnoremap <cr> A<cr><esc>

" <|>: reselect visual block after indent *****
xnoremap < <gv
xnoremap > >gv
nmap <d-[> <<
nmap <d-]> >>

"automatically jump to end of text you pasted:
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
nnoremap <leader>p A<space><esc>p
nnoremap <leader>P ^Pa<space><esc>

" system clipboard support
set clipboard+=unnamed
"nnoremap yy "+yy
"vnoremap y "+y
"nnoremap p "+p
"vnoremap p "+p
"nnoremap P "+P
"vnoremap P "+P

"so ~/.vim/custom/plugins-setting.vim
so ~/.vim/custom/settings.vim
so ~/.vim/custom/mappings.vim
so ~/.vim/custom/split-windows.vim
so ~/.vim/custom/qargs.vim
so ~/.vim/custom/mk-non-ex-dir.vim
so ~/.vim/custom/multicursor-conflict-fix.vim
