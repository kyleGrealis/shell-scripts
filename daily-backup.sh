#!/bin/bash

echo "Daily backup: INITIATED!"
echo
echo
# make a daily backup of the Documents directory
tar -czf /Users/3nc0d3d_/Backup/backup.tar.gz /Users/3nc0d3d_/teek/
echo "Daily backup: COMPLETE!"
echo
echo "Moving a copy to iCloud Documents..."
cp /Users/3nc0d3d_/Backup/backup.tar.gz /Users/3nc0d3d_/Documents/
echo
echo "Next backup in 24 hours."
