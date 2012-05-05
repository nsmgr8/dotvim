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

" Git Repos by http://vim-scripts.org ( get names from https://github.com/vim-scripts/following )
"Bundle 'Conque-Shell'
"Bundle 'JSON.vim'
"Bundle 'Jinja'
Bundle 'ZoomWin'
Bundle 'django.vim'
"Bundle 'nginx.vim'
"Bundle 'python.vim--Vasiliev'
Bundle 'Color-Sampler-Pack'
"Bundle 'python_fold'
Bundle 'YankRing.vim'
Bundle 'vim-indent-object'
Bundle 'vcscommand.vim'
Bundle 'DrawIt'
" Git Repos on GitHub
" Inspired from http://sontek.net/turning-vim-into-a-modern-python-ide
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'alfredodeza/pytest.vim'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'carlosvillu/coffeScript-VIM-Snippets'
"Bundle 'fs111/pydoc.vim'
"Bundle 'gmarik/ide-popup.vim'
"Bundle 'godlygeek/tabular'
"Bundle 'ChrisKempson/Vim-Tomorrow-Theme'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'kchmck/vim-coffee-script'
Bundle 'majutsushi/tagbar'
"Bundle 'mattn/zencoding-vim'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'sukima/xmledit'
Bundle 'tpope/vim-fugitive'
"Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-unimpaired'
"Bundle 'mitechie/pyflakes-pathogen'
Bundle 'ervandew/supertab'
"Bundle 'roman/golden-ratio'
"Bundle 'sontek/rope-vim'
Bundle 'klen/python-mode'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'TaskList.vim'
Bundle 'Align'
Bundle 'tracwiki'
Bundle 'nsmgr8/Trac.vim'

" Git Repos not on GitHub
"Bundle 'git://git.wincent.com/command-t.git'

" vim: filetype=vim
