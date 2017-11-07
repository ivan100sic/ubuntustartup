# Make sure we are NOT root
if [ "$EUID" -e 0 ]
  then echo "Please do not run as root, you may not see some changes"
  exit
fi

# Run common.sh

wget https://raw.githubusercontent.com/ivan100sic/ubuntustartup/master/common.sh && \
bash common.sh

# Install some database tools

sudo apt-get install mysql-server
sudo apt-get install php7*

