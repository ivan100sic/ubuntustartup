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

# Install VNC if today is Monday

dan=$(date)
dan=${dan:0:3}
if [ $dan == 'Mon' ]
then
 lnk='https://www.realvnc.com/en/connect/download/viewer/linux'
 fn=$(wget $lnk/ -O -| grep -o '\".*x64\.deb')
 fn=${fn:2}
 pn=VNC-Linux-x64.deb
 l2=https://www.realvnc.com/$fn
 wget $l2 -O $pn
 sudo dpkg -i $pn
 rm $pn
fi


