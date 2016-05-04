if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" syntax
NeoBundle 'scrooloose/syntastic'
NeoBundle 'octol/vim-cpp-enhanced-highlight'
NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'kergoth/aftersyntaxc.vim'
NeoBundle 'chrisbra/csv.vim'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'honza/dockerfile.vim'
NeoBundle 'tpope/vim-git'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'othree/html5.vim'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'othree/yajs.vim'
NeoBundle 'leshill/vim-json'
NeoBundle 'LaTeX-Box-Team/LaTeX-Box'
NeoBundle 'groenewege/vim-less'
NeoBundle 'mutewinter/nginx.vim'
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'mitsuhiko/vim-python-combined'
NeoBundle 'vim-scripts/R.vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'wting/rust.vim'
NeoBundle 'kurayama/systemd-vim-syntax'
NeoBundle 'acustodioo/vim-tmux'
NeoBundle 'ap/vim-css-color'
NeoBundle 'mitsuhiko/vim-jinja'
NeoBundle 'django.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'vim-perl/vim-perl'
NeoBundle 'tracwiki'
NeoBundle 'sukima/xmledit'
NeoBundle 'tudorprodan/html_annoyance.vim'
NeoBundle 'fish-syntax'
NeoBundle 'markwu/manpageview'
NeoBundle 'leafgarland/typescript-vim'
" colors
NeoBundle 'CycleColor'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'CSApprox'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'jdkanani/vim-material-theme'
NeoBundle 'zenorocha/dracula-theme', {'rtp': 'vim/'}
NeoBundle 'reedes/vim-colors-pencil'
NeoBundle 'edkolev/promptline.vim'
NeoBundle 'edkolev/tmuxline.vim'
" utils
NeoBundle 'DrawIt'
NeoBundle 'ervandew/supertab'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'rdnetto/YCM-Generator'
NeoBundle 'YankRing.vim'
NeoBundle 'mattn/emmet-vim'
" formats
NeoBundle 'vim-indent-object'
"NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Align'
" vcs
NeoBundle 'vcscommand.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'
NeoBundle 'mhinz/vim-signify'
" jumps, search, list
NeoBundle 'Shougo/Unite.vim'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'rking/ag.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'TaskList.vim'
NeoBundle 'tpope/vim-unimpaired'
" python
NeoBundle 'alfredodeza/pytest.vim'
NeoBundle 'jmcantrell/vim-virtualenv'
" environment
NeoBundle 'nsmgr8/vitra'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'Rykka/riv.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
