#!/bin/bash
LB="\033[1;34m"
NC='\033[0m'
cd `dirname "$0"`
if [[ -z "$LC_ALL" ]]; then
	export LC_ALL=C
fi

# install TORCS dependencies
printf "${LB}>> Begin installing dependencies\n${NC}"
sudo apt-get upgrade -y
sudo apt-get update -y
sudo apt-get install build-essential -y
sudo apt-get install xvfb -y
if ! hash git 2>/dev/null; then sudo apt-get install git -y >/dev/null; fi
printf "${LB}>> All dependencies installed\n${NC}"

# installing TORCS
printf "${LB}>> Begin installing TORCS\n${NC}"
sudo apt-get build-dep torcs -y
sudo apt-get update -y
cd torcs-1.3.6
make
sudo make install
sudo make datainstall
cd ..
printf "${LB}>> TORCS installed\n${NC}"

# install py_TORCS
printf "${LB}>> Begin installing py_TORCS\n${NC}"
cd py_TORCS
python setup.py install
python3 setup.py install
cd ..
printf "${LB}>> py_TORCS installed\n${NC}"