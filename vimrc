source ~/.vim/bundles.vim
source ~/.vim/global.vim
source ~/.vim/status.vim
source ~/.vim/settings.vim
source ~/.vim/plugins.vim
source ~/.vim/bindings.vim
source ~/.vim/utils.vim

if filereadable(expand("~/.vimrc.local", ":p"))
  source ~/.vimrc.local
endif
