#!/bin/bash

declare -A sorting

read -p "Enter the value  of a = " varA
read -p "Enter the value  of b = " varB
read -p "Enter the value  of c = " varC

res1=$(($varA+$varB*$varC))
   echo " a+b*c = " $res1
res2=$(($varA*$varB+$varC))
   echo " a*b+c = " $res2
res3=$(($varA+$varB/$varC))
   echo " a+b/c = " $res3
res4=$(($varA%$varB+$varC))
   echo " a%b+c = " $res4


sorting=([1]="$res1" [2]="$res2" [3]="$res3" [4]="$res4")
   echo ${sorting[@]}

for(( i=0; i<=4; i++ ))
do
     arr[i]=${sorting[$i]}
     echo "${arr[i]}"
done


function sortDecendingOrder()
{
   for (( i=0; i<=4; i++ ))
   do
      for (( j=$i+1; j<=4; j++ ))
      do
         if [[ ${arr[i]} -lt ${arr[j]} ]]
         then
              temp=${arr[i]}
              arr[i]=${arr[j]}
              arr[j]=$temp
         fi
      done
   done
   echo "desending order" ${arr[@]}
}
function sortAscendingOrder()
{
   for (( i=0; i<=4; i++ ))
   do
      for (( j=$i+1; j<=4; j++ ))
      do
         if [[ ${arr[i]} -gt ${arr[j]} ]]
         then                                                                                                                                                                                  >
              arr[i]=${arr[j]}
              arr[j]=$temp
         fi
      done
   done
              echo  " ascending order "${arr[@]}
}

sortAscendingOrder


sortDecendingOrder


	

