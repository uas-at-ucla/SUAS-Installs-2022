#!/bin/sh

# sudo apt update && upgrade
# # sudo apt install git
# # sudo apt install python3
# git clone https://github.com/ArduPilot/ardupilot.git
# cd ardupilot
# CUR_LOC="$(pwd)"
# git submodule update --init --recursive

# # git config --global url."https://"


# Tools/environment_install/install-prereqs-ubuntu.sh -y
# . ~/.profile
# cd $CUR_LOC

cd /ardupilot
./waf configure --board sitl 
./waf plane 
./waf check