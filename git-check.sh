#!/bin/bash


#find ~/repos -maxdepth 1 -mindepth 1 -type d | while read dir; do
for dir in ~/repos/* ; do
#cd $dir
	if [[ -d $dir/.git ]]
	then
		cd $dir
		echo "------------------------------------------------------------------------------"
		echo -e "Currently checking $dir\n"
  		git status
	sleep 0.2
	else
		continue
	fi
done
echo "=============================================================================="
echo -e "\n\nAll git repos updated"

