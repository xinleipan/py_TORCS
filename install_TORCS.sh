#!/bin/bash
LB="\033[1;34m"
NC='\033[0m'
cd `dirname "$0"`
if [[ -z "$LC_ALL" ]]; then
	export LC_ALL=C
fi

# installing TORCS
printf "${LB}>> Begin installing TORCS\n${NC}"
cd torcs-1.3.6
make
sudo make install
sudo make datainstall
cd ..
printf "${LB}>> TORCS installed\n${NC}"