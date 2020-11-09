set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" added nerdtree
Plugin 'scrooloose/nerdtree'

" command-t
Plugin 'git://git.wincent.com/command-t.git'

" theme
Plugin 'sickill/vim-monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


autocmd vimenter * NERDTree

syntax on
colorscheme  monokai

set t_Co=256
set background=dark
highlight Visual cterm=reverse ctermbg=NONE



let NERDTreeWinSize=40
autocmd VimEnter * NERDTree

" close if final buffer is netrw or the quickfix
augroup finalcountdown
 au!
 "autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()),
 "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
 autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) || &buftype == 'quickfix' | q | endif
 "nmap - :Lexplore<cr>
 nmap - :NERDTreeToggle<cr>
augroup END

nmap <F5> :18winc <<cr>
nmap <F8> :18winc ><cr>
map <f2> :NERDTreeToggle<cr>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap <C-J> 50j<cr>
nmap <C-K> 50k<cr>

set hlsearch

set cindent
set cinoptions=g1

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
