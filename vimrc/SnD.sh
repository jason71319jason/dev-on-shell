if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    hash git 2>/dev/null || { echo >&2 "Need to install \"git\""; exit 1; }
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
