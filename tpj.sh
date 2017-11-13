# Make sure we are NOT root
if [ "$EUID" -e 0 ]
  then echo "Please do not run as root, you may not see some changes"
  exit
fi

# Run common.sh

wget https://raw.githubusercontent.com/ivan100sic/ubuntustartup/master/common.sh && \
bash common.sh

# Install monodevelop
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get -y install monodevelop