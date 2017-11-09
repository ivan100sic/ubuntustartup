# Make sure we are NOT root
if [ "$EUID" -e 0 ]
  then echo "Please do not run as root, you may not see some changes"
  exit
fi

# Run common.sh

wget https://raw.githubusercontent.com/ivan100sic/ubuntustartup/master/common.sh && \
bash common.sh

# Install some database tools

sudo apt-get -y install mysql-server

sudo apt-get -y install php7.0-cli
sudo apt-get -y install php7.0-common
sudo apt-get -y install php7.0-json
sudo apt-get -y install php7.0-mbstring
sudo apt-get -y install php7.0-mysql
sudo apt-get -y install php7.0-readline
sudo apt-get -y install php7.0-sqlite
sudo apt-get -y install php7.0-xml

sudo apt-get -y install php-xdebug

