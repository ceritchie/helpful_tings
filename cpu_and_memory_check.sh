#!/bin/bash  


#CHECK CPU AND MEMORY  

while ; 
do 

#GET CPU and Memory info from local linux machine  :   


CPU=$(top -n5 | awk '/CPU/ { $print $2,$4 }')

sleep 2; 

MEM=$(free -m | awk 'Mem/{ $print $3,$6 }' )

echo "The CPU usage is : $CPU "

sleep 2; 

echo "The Memory Usage is : $MEM "

   sleep 1;  
done 
