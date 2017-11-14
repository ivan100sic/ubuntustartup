# Procitaj ovo

# Kad pokreces pokreni kao root (sudo)
# Kopiraj ovo unutar foldera gde se nalazi gcc (MAINTANERS)
# Pokreni, uzivaj

if [[ $EUID > 0 ]]
  then echo "Please run as root"
  exit
fi

./contrib/download_prerequisites
mkdir objdir
cd objdir
../configure --disable-multilib
make -j 32
make install
