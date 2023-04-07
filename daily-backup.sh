#!/bin/bash

# make a daily backup of the Documents directory
tar -czvf backup.tar.gz ~/Documents/

# move the backup .tar.gz to the Backups directory
mv backup.tar.gz ~/Backup/
