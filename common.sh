# Make sure we are NOT root
if [ "$EUID" -e 0 ]
  then echo "Please do not run as root, you may not see some changes"
  exit
fi

# Set mouse accelaration
for i in {1..16}
do
 xinput --set-prop $i 'Device Accel Profile' -1
done;

# Set up visuals
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 4
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 4
wget https://i.ytimg.com/vi/sJQy7inDgUE/maxresdefault.jpg -O zid.jpg && \
gsettings set org.gnome.desktop.background picture-uri 'file:///home/ubuntu/zid.jpg'

gsettings set org.gnome.Terminal.Legacy.Profile:/:0/ default-size-columns 100
gsettings set org.gnome.Terminal.Legacy.Profile:/:0/ default-size-rows 50
gsettings set org.gnome.Terminal.Legacy.Profile:/:0/ use-transparent-background true
gsettings set org.gnome.Terminal.Legacy.Profile:/:0/ use-theme-colors false

gsettings set com.canonical.Unity integrated-menus false

# Update apt
sudo apt-get -y update
sudo apt-get -y install apt-transport-https

# Install sublime text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -y update
sudo apt-get -y install sublime-text

# Install various utilities
sudo apt-get -y install curl git



