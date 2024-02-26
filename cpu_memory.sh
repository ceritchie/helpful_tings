#!/bin/bash  

cd /tmp &&;  

#EXPORT LINUX SYSTEM INFO TEST FOR CRONTAB VIA ANSIBLE  
#POAM MILESTONE 4 :  PLAIN PASSWORDS  


#Find Kernel version  
uname -avr  >> kernel_info.txt;   

#Find release version  
cat /etc/os-release >> release_info_1.txt;  

#Find hardware info  
lshw -short >> hardware_info_1.txt;  
dmidecode -t processor >> hardware_info_2.txt;  
dmidecode -t  chassis >> hardware_info_3.txt;

#Disk info

lsblk  >> disk_info_1.txt;   
lsblk --nodeps -o name,serial,type  >> disk_info_2.txt;  
# or 
# hdparm -I /dev/sd?  | grep  Serial  >> disk_info_2.txt  
ls -la  /dev/disk/by-id | awk '{print $9}' >> disk_info_3.txt;  


#Memory info
free -h  >> memory_info_1.txt;  
cat /proc/meminfo  >> memory_info_2.txt;  


# Combine all stats into one file for test   

cat *.txt  >> SYSTEM_INFO.txt;  


