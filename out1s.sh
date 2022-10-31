#!/bin/bash


#
#sh n200out1pps2.sh
#sh n200out2pps2.sh
#sh n200out3pps2.sh
#sh n200out4pps4.sh
#
#
#sh n300out1pps2.sh
#sh n300out2pps2.sh
#sh n300out3pps2.sh
#sh n300out4pps4.sh
#
#
#sh n500out1pps2.sh
#sh n500out2pps2.sh
#sh n500out3pps2.sh
#sh n500out4pps4.sh
#
#
#sh n1000out1pps2.sh
#sh n1000out2pps2.sh
#sh n1000out3pps2.sh
#sh n1000out4pps4.sh


echo "This script is about to run another script for out1."
sh ./n200out1pps2.sh
sh ./n300out1pps2.sh
sh ./n500out1pps2.sh
sh ./n1000out1pps2.sh
echo "This script has just run another script."


# sh out1s.sh
