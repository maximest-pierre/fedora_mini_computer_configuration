#config to setup my sony netbook

# Setup repos
sudo dnf install  http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-23.noarch.rpm
sudo dnf install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-23.noarch.rpm

# Install i3, xorg-server and fonts
sudo dnf install i3 i3status i3lock -y
sudo dnf install -y xorg-x11-xinit xorg-x11-server-Xorg xorg-x11-drv-evdev xorg-x11-utils xorg-x11-font-utils xorg-x11-fonts-misc xorg-x11-drivers 
sudo dnf groupinstall Fonts -y

cd ~

# setup gcc and cmake
sudo dnf install gcc cmake

# setup docker
sudo curl -fsSL https://get.docker.com/ | sudo sh
sudo curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

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

# Install django
sudo pip install django

echo exec /usr/bin/i3 > .xinitrc

startx
