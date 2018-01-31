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

prof=$(gsettings get org.gnome.Terminal.ProfilesList default)
prof=${prof:1:-1}
termstr="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"
gsettings set "$termstr$prof/" default-size-columns 100
gsettings set "$termstr$prof/" default-size-rows 50
gsettings set "$termstr$prof/" use-transparent-background true
gsettings set "$termstr$prof/" use-theme-colors false
gsettings set "$termstr$prof/" foreground-color '#FFFFFF'
gsettings set "$termstr$prof/" background-transparency-percent 25

gsettings set com.canonical.Unity integrated-menus true
dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-hide-mode 1
dconf write /org/compiz/profiles/unity/plugins/unityshell/edge-responsiveness 8.0
dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-capture-mouse false
dconf write /org/compiz/profiles/unity/plugins/unityshell/num-launchers 1

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
git config --global user.email "ivan100sic@gmail.com"
git config --global user.name "Ivan Stosic"

# Set up sublime by cloning the competelib repo
mkdir ~/.config/sublime-text-3
mkdir ~/.config/sublime-text-3/Packages
git clone https://github.com/ivan100sic/competelib
cp -r ./competelib/* ~/.config/sublime-text-3/Packages
rm -rf ./competelib





