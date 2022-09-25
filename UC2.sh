#!/bin/bash 

echo "Enter First number"
read a
echo "Enter Second Number"
read b
echo "Enter Third Number"
read c

z=$(( $a + $(( $b *$c )) ))
echo $z
