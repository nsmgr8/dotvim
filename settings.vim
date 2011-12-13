let mapleader = ","
let maplocalleader = "\\"

" disable for now or else remapping of n etc in bindings.vim wasn't working.
" need to investigate some more
let g:space_loaded = 1

" Assume Bash is my shell (:help sh.vim)
let g:is_bash = 1
let bash_is_sh=1        " syntax shell files as bash scripts

" matchit
runtime! macros/matchit.vim
