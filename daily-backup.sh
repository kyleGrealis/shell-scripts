#!/bin/bash

<<<<<<< HEAD
# to be run as a cron job

echo "Daily personal backup: INITIATED!"
echo
=======
echo -e "Personal backup: INITIATED!\n"
>>>>>>> e193792 (needs improvements)

# make a daily backup of my personal directory
tar -czf ~/Documents/backup.tar.gz ~/teek/ 2> /dev/null
if [[ $? -eq 0 ]]
  then
    echo -e "Personal folder backup: ${bgreen}COMPLETE!${nc}\n"
  else
    echo -e "Personal folder backup: ${bred}FAILED!!!${nc}\n"
fi

sleep 2

echo -e "Repo backup: INITIATED!\n"

# make backup of git repositories
tar -czf ~/Documents/repos-bu.tar.gz ~/repos/ 2> /dev/null
if [[ $? -eq 0 ]]
  then
    echo -e "Repo backup: ${bgreen}COMPLETE!${nc}\n"
  else
    echo -e "Repo backup: ${bred}FAILED!!${nc}\n"
fi

sleep 2

echo "Be sure to backup daily."
