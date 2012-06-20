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
Bundle 'Color-Sampler-Pack'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
" utils
Bundle 'DrawIt'
Bundle 'ZoomWin'
Bundle 'Lokaltog/vim-easymotion'
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
" jumps, search, list
Bundle 'mileszs/ack.vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'TaskList.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'kien/ctrlp.vim'
Bundle 'spiiph/vim-space'
" python
Bundle 'klen/python-mode'
Bundle 'alfredodeza/pytest.vim'
" environment
Bundle 'vimwiki'
Bundle 'nsmgr8/vitra'
Bundle 'mattn/gist-vim'
