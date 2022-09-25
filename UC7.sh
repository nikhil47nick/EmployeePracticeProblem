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
