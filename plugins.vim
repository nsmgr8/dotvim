" For 'supertab' script
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>m'

" nerdtree
" ,n to Display the file browser tree
nnoremap <leader>n :NERDTreeToggle<CR>
" ,p to show current file in the tree
nnoremap <leader>p :NERDTreeFind<CR>
let g:NERDTreeHijackNetrw = 0

" nerdcommenter
" ,/ to invert comment on the current line/selection
nnoremap <leader>/ :call NERDComment(0, "invert")<cr>
vnoremap <leader>/ :call NERDComment(0, "invert")<cr>

" Bundle 'majutsushi/tagbar'
nnoremap <leader>l :TagbarToggle<CR>

" Bundle 'sjl/gundo.vim'
nnoremap <leader>u :GundoToggle<CR>

nnoremap <leader>a <Esc>:Ack!<space>
nnoremap <leader>aw <Esc>:Ack! '\b<c-r><c-w>\b'<cr>
nnoremap <leader>ac <Esc>:Ack! '\bclass <c-r><c-w>\b'<cr>
nnoremap <leader>am <Esc>:Ack! '\bdef <c-r><c-w>\b'<cr>
nnoremap <leader>af <Esc>:AckFile '<c-r><c-w>\.py$'<cr>

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

let g:pymode_lint = 0
let g:pymode_options_fold = 0
let g:pymode_rope = 0
let g:pymode_utils_whitespaces = 0
let g:pymode_breakpoint_key = '<leader>bk'

let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 2

let g:Powerline_symbols = 'fancy'

let g:indent_guides_guide_size = 1
