#######################################################
#
# Script name: R-selectVersion_v1.sh
# Language: Bash
# Program: R
# Purpose: Choose among the multiple R version to use
# Author: Arindam Ghosh
# Date: 25 October 2019
#
#######################################################


# R source file location: /home/dell/Documents/Softwares/R
# R installation location: /opt/R
# Building R from source::
#  $ ./configure --prefix=/opt/R/3.x.x 
#  $ make
#  $ sudo make install
#  in ~/.bashrc set "alias R='sh /home/dell/Documents/Softwares/bin/R-selectVersion.sh'"


#!/bin/bash

echo "Multiple R versions installed in system."
echo "Choose R version to use:"
echo "[1] R-3.4.2"
echo "[2] R-3.6.1"

read -p "Select (1 / 2) : " version

case $version in
	1)
           /opt/R/3.4.2/bin/R
	   ;;
	2)
           /opt/R/3.6.1/bin/R
	   ;;
	*)
	   echo "Invalid entry!!!"
	   ;;
esac
