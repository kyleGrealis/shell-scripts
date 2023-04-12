#!/bin/bash

echo -e "\n${byellow}INITIATING${nc}: git repo status check"
sleep 1.5

for dir in ~/repos/* ; do
	if [[ -d $dir/.git ]]
	then
		cd $dir
		# echo -e "Currently checking $dir\n"
  	status=$(git status | grep -cE "modified|Untracked|'git add'")
		if
		  [[ $status -ge 1 ]]
		    then
	        echo "------------------------------------------------------------------------------"
		      echo -e "${bred} $dir ${byellow}has changes! ${nc}"
	        echo "------------------------------------------------------------------------------"
	        sleep 0.5
	        git status
		else
		  continue
		fi
	sleep 0.2
	else
		continue
	fi
done


echo "=============================================================================="
echo -e "${bgreen}COMPLETED${nc}: git repo status check\n"

