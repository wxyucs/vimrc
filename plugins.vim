call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'scrooloose/nerdtree'
Plug 'git://git.wincent.com/command-t.git'
Plug 'ycm-core/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

" Initialize plugin system
call plug#end()
