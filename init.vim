" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'klen/python-mode'
Plug 'junegunn/fzf'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number