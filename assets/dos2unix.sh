yum -y install dos2unix
dos2unix /assets/setup.sh
dos2unix /clorecho
sed -i 's/\r$//' /assets/setup.sh
