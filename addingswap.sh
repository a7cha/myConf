## tested on ubuntu 20.04
## adding 1GB SWAP if you wan more just replace 1G to 24G for 24GB or whatever
sudo fallocate -l 1G /swapfile && 
sudo chmod 600 /swapfile && 
sudo mkswap /swapfile&& 
sudo swapon /swapfile &&
sudo echo "/swapfile swap swap defaults 0 0" >> /etc/fstab &&
sudo swapon --show &&
sudo free -h && 
sudo echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.conf &&
sudo echo "vm.swappiness = 10" >> /etc/sysctl.conf 


