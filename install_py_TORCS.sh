#!/bin/bash
LB="\033[1;34m"
NC='\033[0m'
cd `dirname "$0"`
if [[ -z "$LC_ALL" ]]; then
	export LC_ALL=C
fi

# install py_TORCS
printf "${LB}>> Begin installing py_TORCS\n${NC}"
cd py_TORCS
python setup.py install
python3 setup.py install
cd ..
printf "${LB}>> py_TORCS installed\n${NC}"