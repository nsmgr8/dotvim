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

" syntax
Bundle 'scrooloose/syntastic'
Bundle 'JSON.vim'
Bundle 'django.vim'
Bundle 'Jinja'
Bundle 'nginx.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tracwiki'
Bundle 'sukima/xmledit'
Bundle 'tudorprodan/html_annoyance.vim'
Bundle 'tsaleh/vim-tmux'
" colors
Bundle 'CycleColor'
Bundle 'Colour-Sampler-Pack'
Bundle 'CSApprox'
Bundle 'bling/vim-airline'
" utils
Bundle 'DrawIt'
Bundle 'ervandew/supertab'
Bundle 'YankRing.vim'
Bundle 'mattn/zencoding-vim'
" formats
Bundle 'vim-indent-object'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'Align'
" vcs
Bundle 'vcscommand.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'mhinz/vim-signify'
" jumps, search, list
Bundle 'rking/ag.vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'TaskList.vim'
Bundle 'tpope/vim-unimpaired'
" python
Bundle 'klen/python-mode'
Bundle 'alfredodeza/pytest.vim'
" environment
Bundle 'nsmgr8/vitra'