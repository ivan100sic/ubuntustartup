# Make sure we are root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Run common.sh

wget https://raw.githubusercontent.com/ivan100sic/ubuntustartup/master/common.sh
./common.sh

# Install some database tools

apt-get install mysql-server
apt-get install php7*

