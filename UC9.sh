#!/bin/bash

declare -A Computation

echo "Enter First number"
read a
echo "Enter Second Number"
read b
echo "Enter Third Number"
read c

Computation[uc2]=$(( $a + $(( $b * $c )) ))
Computation[uc3]=$(( $c + $(( $b * $a )) ))
Computation[uc4]=$(( $c + $(( $a / $b )) ))
Computation[uc5]=$(( $c + $(( $a % $b )) ))


echo ${Computation[@]}
Comp=(${Computation[@]})
echo "Array ${Comp[@]}"

num=${#Comp[@]}
temp=0

for (( i=0; i<$num; i++ ))
do

for (( j=0;j<$num;j++ ))
do

if [ ${Comp[i]} -lt ${Comp[j]} ]
then
temp=${Comp[i]}
Comp[i]=${Comp[j]}
Comp[j]=$temp
fi

done
done

echo ${Comp[@]}

