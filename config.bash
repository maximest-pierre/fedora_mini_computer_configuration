#config to setup my sony netbook

# Setup repos
sudo dnf install  http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-23.noarch.rpm
sudo dnf install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-23.noarch.rpm

# Install i3, xorg-server and fonts
dnf install i3 i3status i3lock -y
dnf install -y xorg-x11-xinit xorg-x11-server-Xorg xorg-x11-drv-evdev xorg-x11-utils xorg-x11-font-utils xorg-x11-fonts-misc xorg-x11-drivers 
dnf groupinstall Fonts -y

cd ~

# Install pip3
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo python2 get-pip.py

# Dependencies for vim config
sudo pip install dbgp vim-debug pep8 flake8 pyflakes isort
sudo pip2 install dbgp vim-debug pep8 flake8 pyflakes isort

# Download .vimrc 
wget https://raw.githubusercontent.com/maximest-pierre/vim/master/vimrc -O $HOME/.vimrc

# Install vim config
vim -E -u $HOME/.vimrc +qall

echo exec /usr/bin/i3 > .xinitrc

startx
