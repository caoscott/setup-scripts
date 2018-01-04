cd ~/software && git clone https://github.com/horst3180/arc-theme ~/software/arc-theme --depth 1
apt-get install -y dh-autoreconf libgtk-3-dev
~/software/arc-theme/autogen.sh --prefix=/usr
cd ~/software/arc-theme && make install
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
