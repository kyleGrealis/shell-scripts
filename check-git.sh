#!/bin/bash

echo -e "\n${byellow}INITIATING${nc}: git repo status check"
sleep 1.5

for dir in ~/repos/* ; do
	if [[ -d $dir/.git ]]; then
		cd $dir
  	status=$(git status --porcelain | wc -c)
		if
		  [[ $status -gt 0 ]]; then
	        echo "------------------------------------------------------------------------------"
		      echo -e "${bred} $dir ${byellow}has changes! ${nc}"
	        echo "------------------------------------------------------------------------------"
	        sleep 0.5
	        git status --porcelain
		fi
	sleep 0.2
	fi
done


echo "=============================================================================="
echo -e "${bgreen}COMPLETED${nc}: git repo status check\n"


