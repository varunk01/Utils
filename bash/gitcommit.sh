#!/bin/sh

#Total number of commits
c=3
#interval between commits
interval=5
#Path to working folder
cd D:/pop/working/MockThree

#git config
git config --global user.email "varunk01@dcs.bbk.ac.uk"
git config --global user.name "varunk01@dcs.bbk.ac.uk"

git add .

sec=$(($interval*60))
while [ $c -ge 1 ];  do 

   now=$(date +"%T")
   echo "Current time : $now, next auto commit in $interval minutes.."
   
   sleep $sec;   
   git commit -am "made changes"
   echo "auto commit step :$c, completed" 
   ((c--))
     
done

echo "auto commit completed"
read -p "Press enter to exit"