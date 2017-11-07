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

# Update apt
sudo apt-get update
sudo apt-get install apt-transport-https

# Install sublime text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Install various utilities
sudo apt-get install curl git



