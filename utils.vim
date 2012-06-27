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

    " Make it easy to add heading markers in ReStructuredText
    function! Heading(char)
python <<EOF
import vim

marker_line = vim.eval('a:char') * len(vim.current.line)
current_line_number = vim.current.window.cursor[0] # (row, col)
vim.current.buffer.append(marker_line, current_line_number)
vim.command('normal j')
vim.command('normal o')
EOF
    endfunction

    command! H1 call Heading('=')
    command! H2 call Heading('-')
    command! H3 call Heading('~')
    command! H4 call Heading('^')

    " Quick way to open a filename under the cursor in a new tab
    " (or URL in a browser)
    function! Open()
python <<EOF
import re
import platform
import vim

def launch(uri):
    if platform.system() == 'Darwin':
        vim.command('!open {0}'.format(uri))
    elif platform.system() == 'Linux':
        vim.command('!gnome-open {0}'.format(uri))

def is_word(text):
    return re.match(r'^[\w./?%:#&=-]+$', text) is not None

filename_start = filename_end = vim.current.window.cursor[1] # (row, col)

while filename_start >= 0 and is_word(vim.current.line[filename_start:filename_start+1]):
    filename_start -= 1
filename_start += 1

while filename_end <= len(vim.current.line) and is_word(vim.current.line[filename_end:filename_end+1]):
    filename_end += 1

filename = vim.current.line[filename_start:filename_end]

if filename.endswith('.rst') or filename.endswith('.txt'):
    vim.command('tabedit {0}'.format(filename))

elif filename.lower().startswith('http') or filename.lower().startswith('www.'):
    if filename.lower().startswith('www.'):
        filename = 'http://{0}'.format(filename)
    filename = filename.replace('#', r'\#').replace('%', r'\%')
    launch(filename)

else:
    launch(filename)
EOF

    endfunction

    command! O call Open()
    map <Leader>o :call Open()<CR>

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
autocmd BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2

" XML, HTML
function! TagExpander()
    if exists("b:did_ftplugin")
      unlet b:did_ftplugin
    endif
    runtime! ftplugin/xml.vim ftplugin/xml_*.vim ftplugin/xml/*.vim
endfunction

autocmd FileType xml   call TagExpander()
autocmd FileType html  call TagExpander()
autocmd FileType eruby call TagExpander()
autocmd FileType php   call TagExpander()
autocmd FileType htmljinja call TagExpander()
autocmd FileType htmldjango call TagExpander()

" Ruby
autocmd BufRead,BufNewFile {Gemfile,Rakefile,config.ru} set ft=ruby
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2

" Go ( http://www.go-lang.org )
autocmd BufRead,BufNewFile *.go setlocal ft=go

" YAML
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2

" JSON
autocmd BufRead,BufNewFile *.json setlocal ft=json foldmethod=syntax

" Jinja files
autocmd BufRead,BufNewFile */flask_application/templates/*.html setlocal ft=htmljinja

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
