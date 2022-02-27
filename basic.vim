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
Plug 'kien/ctrlp.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

" Initialize plugin system
call plug#end()

syntax on
colorscheme monokai

set hlsearch
set splitbelow
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

nmap <F5> :18winc <<cr>
nmap <F8> :18winc ><cr>
nmap <C-J> 50j<cr>
nmap <C-K> 50k<cr>
nmap - :NERDTreeToggle<cr>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" ctrlp settings
" ==============
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" nerdtree settings
" =================
autocmd VimEnter * NERDTree
let NERDTreeWinSize=40

" close if final buffer is netrw or the quickfix
augroup finalcountdown
 au!
 autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) || &buftype == 'quickfix' | q | endif
augroup END
