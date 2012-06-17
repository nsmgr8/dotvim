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

"Bundle 'Conque-Shell'
Bundle 'JSON.vim'
Bundle 'Jinja'
Bundle 'ZoomWin'
Bundle 'django.vim'
Bundle 'nginx.vim'
Bundle 'Color-Sampler-Pack'
Bundle 'YankRing.vim'
Bundle 'vim-indent-object'
Bundle 'vcscommand.vim'
Bundle 'DrawIt'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'alfredodeza/pytest.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'kchmck/vim-coffee-script'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/zencoding-vim'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'sukima/xmledit'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'ervandew/supertab'
Bundle 'klen/python-mode'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'TaskList.vim'
Bundle 'Align'
Bundle 'tracwiki'
Bundle 'vimwiki'
Bundle 'nsmgr8/vitra'
Bundle 'CycleColor'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'spiiph/vim-space'
