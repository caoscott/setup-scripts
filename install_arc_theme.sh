pushd ~/software > /dev/null 
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
apt-get install dh-autoreconf
./autogen.sh --prefix=/usr
make install
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
popd > /dev/null
