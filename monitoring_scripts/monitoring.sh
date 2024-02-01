#!/bin/bash

# Display banner
echo ">>> Server Monitor <<<"

# Get system info
  architecture=$(uname -a)
# CPU
  cpu_cores=$(grep 'core id' /proc/cpuinfo | wc -l)
  cpu_threads=$(grep 'processor' /proc/cpuinfo | wc -l)
  cpu_load=$(top -bn1 | tail +8 | awk '{cpul += $9} END {printf("%.1f"), cpul}')
# RAM
  max_ram=$(free --mega | grep Mem | awk '{print $2}')
  used_ram=$(free --mega | grep Mem | awk '{print $3}')
  perc_ram=$(printf "%.2f" $(free --mega | grep Mem | awk '{print $3/$2*100}'))
# Disk
  used_disk=$(df -Bm | grep "/dev/" | grep -v "/boot/" | \
			awk '{used += $3} END {print used}')
  max_disk=$(df -Bg | grep "/dev/" | grep -v "/boot/" | \
			awk '{total += $2} END {print total}')
  perc_disk=$(df -Bm | grep "/dev/" | grep -v "/boot/" | \
	awk '{used += $3} {total += $2} END {printf("%d"), used/total*100}')
# Print last boot
  last_boot=$(who -b | awk '{print $3 " " $4}')
# Print LVM use
  if [ "$(lsblk | grep 'lvm' | wc -l)" -gt 0 ]; then
	  lvm="yes"
  else
	  lvm="no"
  fi
# Print number of TCP connections
  tcp=$(ss -ta | grep ESTAB | wc -l)
# Print number of users
  users=$(users | wc -w)
# Print IP and MAC
  ip=$(hostname -I)
  MAC=$(ip link | awk '$1 == "link/ether" {print $2}')
# Print number of commands executed with sudo
  sudo=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

# Broadcast message to all users
wall "	#Architecture: $arch
	#CPU physical : $cpu_cores
	#vCPU : $cpu_threads
	#Memory Usage: $used_ram/${max_ram}MB (${perc_ram}%)
	#Disk Usage: $used_disk/${max_disk}Gb (${perc_disk}%)
	#CPU load: $cpu_load%
	#Last boot: $last_boot
	#LVM use: $lvm
	#Connections TCP : $tcp ESTABLISHED
	#User log: $users
	#Network: IP $ip($MAC)
	#Sudo : $sudo cmd"
