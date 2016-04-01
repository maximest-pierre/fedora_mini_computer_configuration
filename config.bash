#config to setup my sony netbook

# Setup repos
sudo dnf install  http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-23.noarch.rpm
sudo dnf install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-23.noarch.rpm

# Install i3, xorg-server and fonts
dnf install i3 i3status i3lock -y
dnf install -y xorg-x11-xinit xorg-x11-server-Xorg xorg-x11-drv-evdev xorg-x11-utils xorg-x11-font-utils xorg-x11-fonts-misc xorg-x11-drivers 
dnf groupinstall Fonts -y

echo exec /usr/bin/i3 > .xinitrc

startx
