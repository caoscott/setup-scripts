add-apt-repository -y ppa:gnome-terminator
apt-get update
apt-get install -y terminator
mkdir -p ~/.config/terminator
cp terminator_config ~/.config/terminator/config
