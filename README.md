# Installation

Note that in order to install torcs on your computer system, you may need to 
install CUDA driver without installing opengl libs. The gym-TORCS environment
has only been tested on Ubuntu 16.04 environment, and currently it does not
support windows or macOSX environment. 

To install, follow the instructions

    git clone git@github.com:xinleipan/gym-TORCS.git
    cd torcs-1.3.6
    make clean
    ./configure --disable-xrandr
    cd ..
    ./install_deps.sh
    cd torcs-1.3.6
    make
    sudo make install
    sudo make datainstall
    cd ..
    cd py_TORCS
    python setup.py install    
