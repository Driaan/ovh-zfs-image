sudo apt update && sudo apt -y upgrade
sudo apt -y install wget gnupg2
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install linux-headers-$(uname -r) dkms
sudo apt install virtualbox-6.1
