" Tab line
" Refer ':help setting-guitablabel'
if v:version >= 700

function GuiTabLabel()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)

    " Add '+' if one of the buffers in the tab page is modified
    for bufnr in bufnrlist
        if getbufvar(bufnr, '&modified')
            let label = '[+] '
            break
        endif
    endfor

    " Append the number of windows in the tab page if more than one
    let wincount = tabpagewinnr(v:lnum, '$')
    if wincount > 1
        let label .= wincount
    endif
    if label != ''
        let label .= ' '
    endif

    return label

endfunction

set guitablabel=%{GuiTabLabel()}\ %t

endif " v:version >= 700

set background=dark
colorscheme solarized

" Font.
if has('mac')
    set guifont=Anonymous\ Pro:h16
elseif has('unix')
    let &guifont="DejaVu Sans Mono 10"
endif

