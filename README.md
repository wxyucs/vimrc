# vimrc

This configuration depends on vim-plug.

## install vim-plug
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## download scheme
```bash
curl -fLo ~/.vim/colors/monokai.vim --create-dirs \
    https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
```

## download vim configuration
```bash
git clone https://github.com/wxyucs/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install.sh
```

## install
```bash
vim +PlugInstall +qa
cd  ~/.vim/plugged/YouCompleteMe
python3 ./install.py
```
