function! s:sourcerc(fname)
    if filereadable(expand(a:fname, ":p"))
      execute 'source ' . a:fname
    endif
endfunction

call s:sourcerc("~/.vim/bundles.vim")
call s:sourcerc("~/.vim/global_opts.vim")
call s:sourcerc("~/.vim/plugin_opts.vim")
call s:sourcerc("~/.vim/key_bindings.vim")
call s:sourcerc("~/.vim/utils.vim")
call s:sourcerc("~/.vimrc.local")