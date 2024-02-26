#!/bin/bash  

if 
###  
for file in */*.tar; do  
cd /var/logs;
wait; 
find . -type f "NEED REGEX HERE" mtime +30 exec rm -r {} \; 
wait; 
fi 
