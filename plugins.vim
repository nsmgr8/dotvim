" For 'supertab' script
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>m'

" nerdtree
" ,n to Display the file browser tree
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

nmap <leader>a <Esc>:Ack!<space>

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
vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

"delete fugitive buffers on hide
autocmd BufReadPost fugitive://* set bufhidden=delete

let g:pymode_lint = 0
let g:pymode_options_fold = 0
let g:pymode_rope = 0
let g:pymode_utils_whitespaces = 0

let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 2

let g:Powerline_symbols = 'fancy'

let g:indent_guides_guide_size = 1
