" For 'supertab' script
let g:SuperTabDefaultCompletionType = "context"

" hide some files and remove stupid help
let g:netrw_list_hide='^\.,.\(pyc\|pyo\|o\)$'

" nerdtree
" ,n to Display the file browser tree
nnoremap <leader>n :NERDTreeToggle<CR>
" ,p to show current file in the tree
nnoremap <leader>p :NERDTreeFind<CR>
let g:NERDTreeHijackNetrw = 0
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$', '\.dSYM$']

" Bundle 'majutsushi/tagbar'
nnoremap <leader>l :TagbarToggle<CR>

" Bundle 'sjl/gundo.vim'
nnoremap <leader>u :GundoToggle<CR>

nnoremap <leader>a <Esc>:Ag!<space>
nnoremap <leader>aw <Esc>:Ag! '\b<c-r><c-w>\b'<cr>
nnoremap <leader>ac <Esc>:Ag! '\bclass <c-r><c-w>\b'<cr>
nnoremap <leader>am <Esc>:Ag! '\bdef <c-r><c-w>\b'<cr>

" yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
" ,y to show the yankring
nnoremap <leader>y :YRShow<cr>

" Fugitive
" ,g for Ggrep
nnoremap <leader>g :Ggrep<space>

" ,f for global git serach for word under the cursor (with highlight)
nnoremap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>

" same in visual mode
vnoremap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

"delete fugitive buffers on hide
autocmd BufReadPost fugitive://* set bufhidden=delete

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_python_checkers = ['flake8']

" airline
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:syntastic_stl_format = '%B{E:%t}'
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n' : 'N',
  \ 'i' : 'I',
  \ 'R' : 'R',
  \ 'c' : 'C',
  \ 'v' : 'V',
  \ 'V' : 'V',
  \ '' : 'V',
  \ 's' : 'S',
  \ 'S' : 'S',
  \ '' : 'S',
  \ }
"let g:airline#extensions#whitespace#checks = []
"let g:airline_section_y = airline#section#create_right(['%{printf("%s%s",&fenc,&ff!="unix"?":".&ff:"")}'])
"let g:airline_section_z = airline#section#create_right(['%3l:%2c'])
let g:airline#extensions#hunks#non_zero_only = 1

let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1
