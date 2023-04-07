#!/bin/bash

echo "Daily backup: INITIATED!"
# make a daily backup of the Documents directory
tar -czvf ~/Backup/backup.tar.gz ~/Documents/
echo "Daily backup: COMPLETE!"
sleep 3
echo "Next back-up in 24 hours."
