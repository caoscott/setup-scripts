apt-get install -y curl vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone git://github.com/altercation/vim-colors-solarized.git
cp vimrc ~/.vimrc
