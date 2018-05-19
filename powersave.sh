#!/bin/bash


pass="dragon3s12"
echo $pass | sudo -S echo 3 > /proc/sys/vm/laptop_mode
echo $pass | sudo -S echo 3 > /proc/sys/vm/drop_caches; 
echo $pass | sudo -S cpufreq-set -u 800Mhz;
echo $pass | sudo -S cpufreq-set -r -g powersave;
echo $pass | sudo iwconfig wlp7s0 power on
export GOVERNOR="powersave"
echo $pass | sudo -S powertop --auto-tune

# kdesudo -c "cpufreq-set -u 800Mhz"
# kdesudo -c "cpufreq-set -r -g powersave"
# kdesudo -c echo 3 > /proc/sys/vm/drop_caches; 

# sudo nano /etc/default/acpi-support
# and write ENABLE_LAPTOP_MODE=true

