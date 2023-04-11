#!/bin/bash

echo "Daily personal backup: INITIATED!"
echo

# make a daily backup of my personal directory
tar -czf /Users/3nc0d3d_/Documents/backup.tar.gz /Users/3nc0d3d_/teek/
echo "Daily file backup: COMPLETE!"
echo


echo "Repo backup: INITIATED!"
echo
tar -czf /Users/3nc0d3d_/Documents/repos-bu.tar.gz /Users/3nc0d3d_/repos/
echo "Daily repo backup: COMPLETE!"
echo
echo "Next backup in 24 hours."
