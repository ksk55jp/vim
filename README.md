#  create directory like below
cd ~
mkdir -p bin/dotfiles/
cd !$
#
#
# clone files from github like below
git clone https://github.com/ksk55jp/vim.git
#
#
#
# Symbolic link file and directory like below
ln -nfs ~/bin/dotfiles/vim/vimrc ~/.vimrc
ln -nfs ~/bin/dotfiles/vim/vim ~/.vim


