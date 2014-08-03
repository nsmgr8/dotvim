" Say a message
function! Say(msg)
    echohl IncSearch
    echo a:msg
    echohl None
endfunction

" Copy full buffer to OS clipboard.
function! CopyAll()
    normal mzggVG"+y'z
    call Say("Copied.")
endfunction
command! A call CopyAll()

" Delete buffer contents and Paste from OS clipboard.
function! PasteFromClipboard()
    normal ggVGd"+p1G
    call Say("Pasted.")
endfunction
command! B call PasteFromClipboard()

if has('python') " Assumes Python >= 2.6
" Quick way to open a filename under the cursor in a new tab
" (or URL in a browser)
python <<EOF
import platform
import vim

def launch():
    filename_start = filename_end = vim.current.window.cursor[1]

    while filename_start > 0 and not vim.current.line[filename_start].isspace():
        filename_start -= 1

    while filename_end < len(vim.current.line) and not vim.current.line[filename_end].isspace():
        filename_end += 1

    vim.command('echo "start {} end {}"'.format(filename_start, filename_end))
    uri = vim.current.line[filename_start:filename_end]
    opener = {
        'Darwin': 'open',
        'Linux': 'xdg-open',
    }.get(platform.system())
    if opener:
        vim.command('!{0} {1}'.format(opener, uri))
EOF

    map <Leader>o :silent python launch()<CR>

" Add the virtualenv's site-packages to vim path
python << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

endif " python

" Bundle 'kchmck/vim-coffee-script'
"autocmd BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2

" XML, HTML
"function! TagExpander()
    "if exists("b:did_ftplugin")
      "unlet b:did_ftplugin
    "endif
    "runtime! ftplugin/xml.vim ftplugin/xml_*.vim ftplugin/xml/*.vim
"endfunction

"autocmd FileType xml   call TagExpander()
"autocmd FileType html  call TagExpander()
"autocmd FileType eruby call TagExpander()
"autocmd FileType php   call TagExpander()
"autocmd FileType htmljinja call TagExpander()
"autocmd FileType htmldjango call TagExpander()

" Ruby
"autocmd BufRead,BufNewFile {Gemfile,Rakefile,config.ru} set ft=ruby
"autocmd FileType ruby setlocal tabstop=2 shiftwidth=2

" Go ( http://www.go-lang.org )
"autocmd BufRead,BufNewFile *.go setlocal ft=go

" YAML
"autocmd FileType yaml setlocal tabstop=2 shiftwidth=2

" JSON
"autocmd BufRead,BufNewFile *.json setlocal ft=json foldmethod=syntax

" Jinja files
"autocmd BufRead,BufNewFile */flask_application/templates/*.html setlocal ft=htmljinja

autocmd FileType qf setlocal colorcolumn=0

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
command! DiffOrig silent call DiffOrig()
function! DiffOrig()
    vert new
    r #
    0d_
    diffthis
    set bt=nofile
    setlocal bufhidden=delete
    setlocal nomodifiable
    wincmd p
    diffthis
endfunction

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

command! Rename call RenameFile()
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

command! TabToSpace silent exec "%!expand -t 4"

command! BranchDiverge silent call s:svnDiverge()
function! s:svnDiverge()
    let l:versions = system('svnversion')
    new
    r!svn diff -r$(svnversion | sed 's/[0-9]*[A-Z]/HEAD/')
    exec 'f Branch\ Diverged\ ::\ '.versions
    0d_
    set ft=diff
    set bt=nofile
    setlocal nomodifiable
    nnoremap <buffer> q :bd<cr>
    set bufhidden=delete
endfunction

" Small helper that inserts a random uuid4
" ----------------------------------------
nnoremap <leader>4 :call InsertUUID4()<CR>
function! InsertUUID4()
python << endpython
import uuid, vim
s = str(uuid.uuid4())
cpos = vim.current.window.cursor
cline = vim.current.line
vim.current.line = cline[:cpos[1] + 1] + s + cline[cpos[1] + 1:]
vim.current.window.cursor = (cpos[0], cpos[1] + len(s))
endpython
endfunction
