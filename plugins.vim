" For 'supertab' script
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>m'

" Bundle 'godlygeek/tabular'
command -range AlignFirstEqualSign :<line1>,<line2>Tabularize /^[^=]*\zs/

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" nerdtree
" Ctrl-P to Display the file browser tree
nmap <leader>n :NERDTreeToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" Bundle 'majutsushi/tagbar'
map <leader>l :TagbarToggle<CR>

" Bundle 'sjl/gundo.vim'
map <leader>u :GundoToggle<CR>

" Quick shortcut to s
nnoremap <leader>s :%s//<left>

" Bundle 'ZoomWin'
map <leader><leader> :ZoomWin<CR>

" Bundle 'mileszs/ack.vim'
nmap <leader>a <Esc>:Ack!<space>

" Bundle 'tpope/vim-fugitive'
" http://vimcasts.org/blog/2011/05/the-fugitive-series/
autocmd BufReadPost fugitive://* set bufhidden=delete

" sessionman
nmap <leader>S :SessionList<CR>
nmap <leader>SS :SessionSave<CR>
nmap <leader>SA :SessionSaveAs<CR>

" minibufexpl
"let g:miniBufExplVSplit = 25
let g:miniBufExplorerMoreThanOne = 100
let g:miniBufExplUseSingleClick = 1
" ,b to display current buffers list
nmap <leader>b :MiniBufExplorer<cr>

" yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
" ,y to show the yankring
nmap <leader>y :YRShow<cr>

" Fugitive
" ,e for Ggrep
nmap <leader>g :Ggrep 

" ,f for global git serach for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>

" same in visual mode
:vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

" vim-indentobject
" add Markdown to the list of indentation based languages
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" Enable all python highlightings
let g:pymode_syntax_all = 1

" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0

" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all

" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all

" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" For fast machines
let g:pymode_syntax_slow_sync = 0

let g:pymode_options_fold = 0
let g:pymode_lint_checker = "pyflakes"

let g:Powerline_symbols = 'fancy'
