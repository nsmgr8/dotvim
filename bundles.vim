"" Vim, not Vi.
" This must be first, because it changes other options as a side effect.
set nocompatible
" required! by vundle
filetype off

"" Vundle
"" See :help vundle for more details
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! by vundle
Bundle 'gmarik/vundle'

" lib
Bundle 'mattn/webapi-vim'
" syntax
Bundle 'scrooloose/syntastic'
Bundle 'JSON.vim'
Bundle 'django.vim'
Bundle 'Jinja'
Bundle 'nginx.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tracwiki'
Bundle 'sukima/xmledit'
" colors
Bundle 'CycleColor'
Bundle 'Colour-Sampler-Pack'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'CSApprox'
" utils
Bundle 'DrawIt'
Bundle 'ZoomWin'
Bundle 'msanders/snipmate.vim'
Bundle 'ervandew/supertab'
Bundle 'YankRing.vim'
Bundle 'mattn/zencoding-vim'
" formats
Bundle 'vim-indent-object'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'Align'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
" vcs
Bundle 'vcscommand.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
" jumps, search, list
Bundle 'mileszs/ack.vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'TaskList.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'kien/ctrlp.vim'
" python
Bundle 'klen/python-mode'
Bundle 'alfredodeza/pytest.vim'
Bundle 'jmcantrell/vim-virtualenv'
" environment
Bundle 'vimwiki'
Bundle 'nsmgr8/vitra'
Bundle 'mattn/gist-vim'
Bundle 'mattn/ctrlp-gist'
Bundle 'mattn/ctrlp-mark'
Bundle 'mattn/ctrlp-register'
Bundle 'sgur/ctrlp-extensions.vim'
Bundle 'kaneshin/ctrlp-tabbed'
Bundle 'mattn/ctrlp-git'
