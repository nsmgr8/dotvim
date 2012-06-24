" Don't use Ex mode, use Q for formatting
map Q gq

"make Y consistent with C and D
nnoremap Y y$

" Quick shortcut to s
nnoremap <leader>s :%s//<left>

" toggle highlight trailing whitespace
nmap <silent> <leader>ls :set nolist!<CR>

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>
nmap <leader>b :buffer<space>

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/
nmap <leader>sp :sp **/
nmap <leader>vs :vs **/

cnoremap %% <C-R>=expand('%:h').'/'<cr>

" grep word in current buffer
nmap <leader>vg :vimgrep '\<<c-r><c-w>\>' %<cr>:copen<cr>

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" driving me insane this thing
nmap :W :w
nmap :Q :q
nmap :E :e

" To save, ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
map <Leader>w :w<CR>

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" center display after searching
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#z

nnoremap <c-l> :nohl<cr><c-l>

" http://vim.wikia.com/wiki/Move_cursor_by_display_lines_when_wrapping
nnoremap <silent> j gj
nnoremap <silent> k gk
vnoremap <silent> j gj
vnoremap <silent> k gk

" Remove the Windows ^M (copied from http://amix.dk/vim/vimrc.html)
map <Leader>d mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Insert timestamp
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
