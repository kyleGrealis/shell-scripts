   #!/bin/bash
   
   echo 'This script will install base R, R development tools, and RStudio.'
   
   read -p 'Would you like to continue? (y/n) ' -n 1 -r
   
   # ensure being run with sudo
   if [ "$EUID" -ne 0 ]
   	then echo "Run as sudo!"
   	exit
   fi
   
   echo "Do you want to install base R?"
   select yn in "Yes" "No"; do
   	case $yn in
   		Yes ) apt install r-base; break;;
   		No ) break;;
   	esac
   done
   
   # install base r
   sudo apt install r-base
   
   # install base r dev tools (maybe redundant)
   sudo apt install r-base-dev
   
   # download rstudio deb file
   wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.03.0-386-amd64.deb
   
   # install rstudio deb file
   sudo apt install -f ./rstudio-2023.03.0-386-amd64.deb
