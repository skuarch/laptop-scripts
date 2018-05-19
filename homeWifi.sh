#!/bin/bash 

pass="dragon3s12"
echo $pass | sudo iwconfig wlp7s0 power off
echo $pass | sudo ifconfig wlp7s0 mtu 1472
nmcli c up uuid 02c1ad89-6007-40bb-b108-eba015e4cf26
