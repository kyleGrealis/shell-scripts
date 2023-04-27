#!/bin/bash

printf "\n%s: git repo status check\n" "${byellow}INITIATING${nc}"
sleep 1

for dir in ~/repos/* ; do
	if [[ -d $dir/.git ]]; then
        status=$(git status --porcelain | grep -cE "^[MADRCU]")
		if [[ $status -ge 1 ]]; then
	        printf "------------------------------------------------------------------------------\n"
		    printf "%s %s %s\n" "${bred}" "$dir" "${byellow}has changes!${nc}"
	        printf "------------------------------------------------------------------------------\n"
	        sleep 0.5
	        git status
		fi
	fi
done

printf "==============================================================================\n"
printf "%s: git repo status check\n\n" "${bgreen}COMPLETED${nc}"
