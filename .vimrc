source $HOME/.vim_runtime/.vimrc_vundle

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

set runtimepath^=$HOME/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
