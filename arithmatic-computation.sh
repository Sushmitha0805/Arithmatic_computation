
#!bin/bash -x

read -p "Enter the value  of a = " vara
read -p "Enter the value  of b = " varb
read -p "Enter the value  of c = " varc
exp1=$(($vara+$varb*$varc))
	echo " a+b*c = " $exp1
exp2=$(($vara*$varb+$varc))
   echo " a*b+c = " $exp2
exp3=$(($varc+$vara/$varb))
   echo " a+b/c = " $exp3
exp4=$(($vara%$varb+$varc))
   echo " a%b+c = " $exp4
