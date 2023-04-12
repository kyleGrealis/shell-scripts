#!/bin/bash


# make a daily backup of my personal directory
echo -e "Personal backup: INITIATED!\n"
tar -czf ~/Documents/backup.tar.gz ~/teek/ 2> /dev/null
if [[ $? -eq 0 ]]
  then
    echo -e "Personal folder backup: ${bgreen}COMPLETE!${nc}\n"
  else
    echo -e "Personal folder backup: ${bred}FAILED!!!${nc}\n"
fi
sleep 2


# make backup of git repositories
echo -e "Repo backup: INITIATED!\n"
tar -czf ~/Documents/repos-bu.tar.gz ~/repos/ 2> /dev/null
if [[ $? -eq 0 ]]
  then
    echo -e "Repo backup: ${bgreen}COMPLETE!${nc}\n"
  else
    echo -e "Repo backup: ${bred}FAILED!!${nc}\n"
fi
sleep 2

echo "Be sure to backup daily."
