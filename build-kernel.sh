# Procitaj ovo

# Kada se kopira konfiguracija mora da se udara enter za nove defaulte
# Kad pokreces pokreni kao root (sudo)

# Kopiraj ovo unutar foldera gde se nalazi kernel
# Pokreni, uzivaj

if [[ $EUID > 0 ]]
  then echo "Please run as root"
  exit
fi

cp /boot/config-`uname -r`* .config
make -j32 # rip CPU
make INSTALL_MOD_STRIP=1 modules_install && make install
