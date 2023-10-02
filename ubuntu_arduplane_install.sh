#!/bin/sh

sudo apt update && upgrade

git clone --recurse-submodules https://github.com/ArduPilot/ardupilot.git
cd ardupilot

Tools/environment_install/install-prereqs-ubuntu.sh -y
. ~/.profile
